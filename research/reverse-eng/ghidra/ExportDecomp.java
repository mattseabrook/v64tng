// Portable Ghidra headless post-script: export the function map and
// best-effort C.
// Usage:
//   analyzeHeadless PROJECT_DIR PROJECT -process PROGRAM \
//     -postScript ExportDecomp.java OUTPUT_DIR

import java.io.BufferedWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.util.task.ConsoleTaskMonitor;

public class ExportDecomp extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length != 1) {
            throw new IllegalArgumentException("Expected one argument: output directory");
        }

        Path outputDir = Paths.get(args[0]);
        Files.createDirectories(outputDir);

        DecompInterface decompiler = new DecompInterface();
        decompiler.toggleCCode(true);
        decompiler.toggleSyntaxTree(true);
        if (!decompiler.openProgram(currentProgram)) {
            throw new IllegalStateException("Could not open program in decompiler");
        }

        ConsoleTaskMonitor decompileMonitor = new ConsoleTaskMonitor();
        Path functionMap = outputDir.resolve("functions.tsv");
        Path decompiled = outputDir.resolve("decompiled.c");

        try (BufferedWriter mapWriter = Files.newBufferedWriter(
                    functionMap, StandardCharsets.UTF_8);
             BufferedWriter cWriter = Files.newBufferedWriter(
                    decompiled, StandardCharsets.UTF_8)) {
            mapWriter.write("entry\tname\tbody\n");

            FunctionIterator functions =
                currentProgram.getFunctionManager().getFunctions(true);
            while (functions.hasNext() && !monitor.isCancelled()) {
                Function function = functions.next();
                mapWriter.write(function.getEntryPoint().toString());
                mapWriter.write('\t');
                mapWriter.write(function.getName());
                mapWriter.write('\t');
                mapWriter.write(function.getBody().toString());
                mapWriter.write('\n');

                cWriter.write("\n/* ================================================\n");
                cWriter.write(" * ");
                cWriter.write(function.getName());
                cWriter.write(" @ ");
                cWriter.write(function.getEntryPoint().toString());
                cWriter.write("\n * ================================================ */\n");

                DecompileResults result =
                    decompiler.decompileFunction(function, 60, decompileMonitor);
                if (result.decompileCompleted() &&
                    result.getDecompiledFunction() != null) {
                    cWriter.write(result.getDecompiledFunction().getC());
                } else {
                    cWriter.write("/* Decompilation failed: ");
                    cWriter.write(result.getErrorMessage());
                    cWriter.write(" */\n");
                }
            }
        } finally {
            decompiler.dispose();
        }

        println("Exported analysis to " + outputDir);
    }
}
