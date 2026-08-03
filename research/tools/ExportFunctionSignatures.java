// Ghidra headless post-script: export comparison-friendly function signatures.
// Usage:
//   analyzeHeadless PROJECT_DIR PROJECT -process PROGRAM \
//     -postScript ExportFunctionSignatures.java OUTPUT.tsv

import java.io.BufferedWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.MessageDigest;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.AddressRange;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.listing.InstructionIterator;
import ghidra.program.model.mem.MemoryAccessException;

public class ExportFunctionSignatures extends GhidraScript {
    private static String hex(byte[] bytes) {
        StringBuilder result = new StringBuilder(bytes.length * 2);
        for (byte value : bytes) {
            result.append(String.format("%02x", value & 0xff));
        }
        return result.toString();
    }

    private static String sha256(String value) throws Exception {
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        return hex(digest.digest(value.getBytes(StandardCharsets.UTF_8)));
    }

    private String exactByteHash(Function function) throws Exception {
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        byte[] buffer = new byte[4096];
        for (AddressRange range : function.getBody()) {
            long remaining = range.getLength();
            var address = range.getMinAddress();
            while (remaining > 0) {
                int count = (int)Math.min(buffer.length, remaining);
                try {
                    currentProgram.getMemory().getBytes(address, buffer, 0, count);
                } catch (MemoryAccessException error) {
                    return "unreadable";
                }
                digest.update(buffer, 0, count);
                address = address.add(count);
                remaining -= count;
            }
        }
        return hex(digest.digest());
    }

    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length != 1) {
            throw new IllegalArgumentException("Expected one argument: output TSV");
        }

        Path output = Paths.get(args[0]);
        Files.createDirectories(output.toAbsolutePath().getParent());

        try (BufferedWriter writer =
                 Files.newBufferedWriter(output, StandardCharsets.UTF_8)) {
            writer.write(
                "entry\tname\tbody_bytes\tinstructions\texact_sha256\t"
                + "mnemonic_sha256\tshape_sha256\tmnemonics\n"
            );

            FunctionIterator functions =
                currentProgram.getFunctionManager().getFunctions(true);
            while (functions.hasNext() && !monitor.isCancelled()) {
                Function function = functions.next();
                InstructionIterator instructions =
                    currentProgram.getListing().getInstructions(function.getBody(), true);
                StringBuilder mnemonics = new StringBuilder();
                StringBuilder shape = new StringBuilder();
                int count = 0;

                while (instructions.hasNext()) {
                    Instruction instruction = instructions.next();
                    String mnemonic = instruction.getMnemonicString().toLowerCase();
                    if (count != 0) {
                        mnemonics.append(' ');
                        shape.append(' ');
                    }
                    mnemonics.append(mnemonic);
                    shape.append(mnemonic);
                    shape.append('/');
                    shape.append(instruction.getNumOperands());
                    for (int index = 0; index < instruction.getNumOperands(); ++index) {
                        shape.append('/');
                        shape.append(instruction.getOperandType(index));
                    }
                    ++count;
                }

                writer.write(function.getEntryPoint().toString());
                writer.write('\t');
                writer.write(function.getName());
                writer.write('\t');
                writer.write(Long.toString(function.getBody().getNumAddresses()));
                writer.write('\t');
                writer.write(Integer.toString(count));
                writer.write('\t');
                writer.write(exactByteHash(function));
                writer.write('\t');
                writer.write(sha256(mnemonics.toString()));
                writer.write('\t');
                writer.write(sha256(shape.toString()));
                writer.write('\t');
                writer.write(mnemonics.toString());
                writer.write('\n');
            }
        }

        println("Exported function signatures to " + output);
    }
}
