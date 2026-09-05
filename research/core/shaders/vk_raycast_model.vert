#version 450

layout(location = 0) in vec3 inWorld;
layout(location = 1) in vec3 inNormal;
layout(location = 2) in vec3 inColor;

layout(location = 0) out vec3 vWorld;
layout(location = 1) out vec3 vNormal;
layout(location = 2) out vec3 vColor;
layout(location = 3) out float vDepth;

layout(push_constant) uniform ModelConstants {
    vec4 player; // x, y, angle, fov
    vec4 screen; // width, height, visualScale, torchRange
    vec4 tuning; // fovMul, cameraZ, depthScale, unused
    vec4 light;  // light x, y, z, ambient
} pc;

void main()
{
    vec2 forward = vec2(cos(pc.player.z), sin(pc.player.z));
    vec2 right = vec2(-forward.y, forward.x);
    vec2 delta = inWorld.xy - pc.player.xy;
    float depth = dot(delta, forward);

    vWorld = inWorld;
    vNormal = normalize(inNormal);
    vColor = inColor;
    vDepth = depth;

    if (depth <= 0.05)
    {
        gl_Position = vec4(2.0, 2.0, 2.0, 1.0);
        return;
    }

    float lateral = dot(delta, right);
    float vertical = (inWorld.z - pc.tuning.y) * pc.screen.z;
    float halfFovTan = max(tan(pc.player.w * 0.5 * pc.tuning.x), 0.001);

    gl_Position = vec4(lateral / halfFovTan,
                       -vertical / halfFovTan,
                       depth,
                       depth);
}
