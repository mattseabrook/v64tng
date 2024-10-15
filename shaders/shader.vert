#version 450

// Input from the vertex buffer
layout(location = 0) in vec2 inPos;       // Position of the vertex (in normalized coordinates)
layout(location = 1) in vec2 inTexCoord;  // Texture coordinates of the vertex

// Output to the fragment shader
layout(location = 0) out vec2 fragTexCoord;

void main() {
    // Pass the texture coordinates to the fragment shader
    fragTexCoord = inTexCoord;

    // Transform the vertex position to clip space (no depth needed)
    gl_Position = vec4(inPos.x, inPos.y, 0.0, 1.0);
}