# Set input and output file names
$inputFile = "basement.cpp"
$tempFile = "basement_temp.cpp"

# First pass: Duplicate index 5 to 6
Get-Content $inputFile | ForEach-Object {
    if ($_ -match '^\s*\{(.+)\},?\s*$') {
        $row = $Matches[1].Trim()
        $elems = $row -split '\s*,\s*'
        if ($elems.Count -gt 6) {
            $val5 = $elems[5]
            $elems = $elems[0..5] + @($val5) + $elems[6..($elems.Count-1)]
            "{ " + ($elems -join ", ") + " },"
        } else {
            $_
        }
    } else {
        $_
    }
} | Set-Content $tempFile

# Second pass: Duplicate index 50 to 51
Get-Content $tempFile | ForEach-Object {
    if ($_ -match '^\s*\{(.+)\},?\s*$') {
        $row = $Matches[1].Trim()
        $elems = $row -split '\s*,\s*'
        if ($elems.Count -gt 52) {
            $val50 = $elems[51]
            $elems = $elems[0..51] + @($val50) + $elems[51..($elems.Count-1)]
            "{ " + ($elems -join ", ") + " },"
        } else {
            $_
        }
    } else {
        $_
    }
} | Set-Content $inputFile

# Clean up temp file
Remove-Item $tempFile
