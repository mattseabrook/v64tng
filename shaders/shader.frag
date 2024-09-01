#version 450

// Input from the vertex shader
layout(location = 0) in vec2 fragTexCoord;

// Output color to the framebuffer
layout(location = 0) out vec4 outColor;

// Sampler for the texture
layout(binding = 0) uniform sampler2D texSampler;

void main() {
    // Sample the texture at the given texture coordinates
    outColor = texture(texSampler, fragTexCoord);
}