import os

def generate_header(shader_name):
    header_filename = f"shaders/{shader_name}.h"
    spv_filename = f"shaders/{shader_name}.spv"
    
    # Print working directory and paths for debugging
    print("Current working directory:", os.getcwd())
    print("Trying to open:", spv_filename)
    
    with open(spv_filename, "rb") as f:
        spv = f.read()
    
    spv_hex_array = ', '.join([f'0x{b:02x}' for b in spv])
    header_content = f"""
    // {shader_name}.h
    {spv_hex_array}
    """

    with open(header_filename, "w") as f:
        f.write(header_content.strip())

shaders = ["vert", "frag"]
for shader in shaders:
    generate_header(shader)
