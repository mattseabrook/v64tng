import sys

def spv_to_constexpr(input_filename, output_filename, var_name):
    with open(input_filename, 'rb') as f:
        data = f.read()

    with open(output_filename, 'w') as f:
        f.write(f"constexpr uint32_t {var_name}[] = {{\n")

        for i in range(0, len(data), 4):
            # Take 4 bytes, reverse them for little-endian format, convert to hex
            word = data[i:i+4][::-1]
            f.write(f"    0x{word.hex()},\n")

        f.write("};\n")

if __name__ == "__main__":
    if len(sys.argv) < 4:
        print("Usage: python spv_to_constexpr.py <input.spv> <output.h> <variable_name>")
        sys.exit(1)

    spv_to_constexpr(sys.argv[1], sys.argv[2], sys.argv[3])