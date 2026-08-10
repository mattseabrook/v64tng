function Enable-V32TngLegacyMedia {
    [CmdletBinding(SupportsShouldProcess)]
    param(
        [Parameter(Mandatory)]
        [ValidateScript({ Test-Path -LiteralPath $_ -PathType Container })]
        [string] $GameRoot,

        [switch] $ArchiveOnly
    )

    $resolvedGameRoot = (Resolve-Path -LiteralPath $GameRoot).Path.TrimEnd('\')
    $archiveName = @('B.GJD', 'AT.GJD') |
        Where-Object { Test-Path -LiteralPath (Join-Path $resolvedGameRoot $_) -PathType Leaf } |
        Select-Object -First 1

    if (-not $archiveName) {
        throw "GameRoot must contain B.GJD or AT.GJD: $resolvedGameRoot"
    }

    # This is the exact GETCD predicate in v32tng.exe: C:\T7G through Z:\T7G.
    $archiveHit = $null
    foreach ($codePoint in ([int][char]'C')..([int][char]'Z')) {
        $candidate = '{0}:\T7G\{1}' -f [char]$codePoint, $archiveName
        if (Test-Path -LiteralPath $candidate -PathType Leaf) {
            $archiveHit = $candidate
            break
        }
    }

    $createdSubst = $null
    if (-not $archiveHit) {
        if ((Split-Path -Leaf $resolvedGameRoot) -ine 'T7G') {
            throw 'To emulate GETCD with SUBST, GameRoot must be a directory named T7G.'
        }

        $parent = Split-Path -Parent $resolvedGameRoot
        $freeLetter = foreach ($codePoint in ([int][char]'Z')..([int][char]'C')) {
            $letter = [char]$codePoint
            if (-not (Test-Path -LiteralPath ("${letter}:\"))) {
                $letter
                break
            }
        }

        if (-not $freeLetter) {
            throw 'No unused drive letter from C: through Z: is available for the GETCD emulation.'
        }

        if ($PSCmdlet.ShouldProcess("${freeLetter}:", "SUBST to $parent")) {
            & subst.exe "${freeLetter}:" $parent
            if ($LASTEXITCODE -ne 0) {
                throw "SUBST failed with exit code $LASTEXITCODE."
            }
            $createdSubst = "${freeLetter}:"
            $archiveHit = "${freeLetter}:\T7G\$archiveName"
        }
    }

    $cdDeviceOpen = $null
    $audioTrack2 = $null
    $audioDetail = 'not checked (-ArchiveOnly)'
    if (-not $ArchiveOnly) {
        if (-not ('V32Tng.WinMM' -as [type])) {
            Add-Type -TypeDefinition @'
using System;
using System.Runtime.InteropServices;
using System.Text;
namespace V32Tng {
    public static class WinMM {
        [DllImport("winmm.dll", CharSet = CharSet.Auto)]
        public static extern int mciSendString(
            string command, StringBuilder result, int resultLength, IntPtr callback);
    }
}
'@
        }

        $reply = New-Object System.Text.StringBuilder 256
        $openResult = [V32Tng.WinMM]::mciSendString(
            'open cdaudio alias v32tng_cd shareable', $reply, $reply.Capacity, [IntPtr]::Zero)
        if ($openResult -ne 0) {
            $cdDeviceOpen = $false
            $audioTrack2 = $false
            $audioDetail = "Windows MCI could not open a CD-audio device (error $openResult)."
        }
        else {
            $cdDeviceOpen = $true
            try {
                $null = [V32Tng.WinMM]::mciSendString(
                    'set v32tng_cd time format tmsf', $reply, $reply.Capacity, [IntPtr]::Zero)
                $reply.Clear() | Out-Null
                $countResult = [V32Tng.WinMM]::mciSendString(
                    'status v32tng_cd number of tracks', $reply, $reply.Capacity, [IntPtr]::Zero)
                $trackCount = if ($countResult -eq 0) { [int]$reply.ToString() } else { 0 }

                if ($trackCount -ge 2) {
                    $reply.Clear() | Out-Null
                    $typeResult = [V32Tng.WinMM]::mciSendString(
                        'status v32tng_cd type track 2', $reply, $reply.Capacity, [IntPtr]::Zero)
                    $trackType = $reply.ToString()
                    $audioTrack2 = $typeResult -eq 0 -and $trackType -eq 'audio'
                    $audioDetail = "CD device opened; tracks=$trackCount; track 2 type='$trackType'."
                }
                else {
                    $audioTrack2 = $false
                    $audioDetail = "CD device opened; tracks=$trackCount; no Red Book track 2 is available."
                }
            }
            finally {
                $null = [V32Tng.WinMM]::mciSendString(
                    'close v32tng_cd', $reply, $reply.Capacity, [IntPtr]::Zero)
            }
        }
    }

    # A data-only-ISO trace proves that an open CD device is sufficient for
    # entry even when track 2 is not audio. Report audio readiness separately.
    $ready = [bool]$archiveHit -and ($ArchiveOnly -or $cdDeviceOpen)
    $undo = if ($createdSubst) { "subst $createdSubst /d" } else { $null }

    [pscustomobject]@{
        ArchivePredicate = [bool]$archiveHit
        ArchivePath      = $archiveHit
        CreatedSubst     = $createdSubst
        CdDeviceOpen     = $cdDeviceOpen
        AudioTrack2      = $audioTrack2
        RedBookAudioReady = [bool]$archiveHit -and [bool]$audioTrack2
        AudioDetail      = $audioDetail
        Ready            = $ready
        Undo             = $undo
    }
}
