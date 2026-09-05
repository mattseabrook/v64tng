#version 450

layout(location = 0) in vec3 vWorld;
layout(location = 1) in vec3 vNormal;
layout(location = 2) in vec3 vColor;
layout(location = 3) in float vDepth;

layout(set = 0, binding = 0, rgba8) uniform image2D outputImage;
layout(set = 0, binding = 1, r32ui) uniform uimage2D depthImage;

layout(push_constant) uniform ModelConstants {
    vec4 player; // x, y, angle, fov
    vec4 screen; // width, height, visualScale, torchRange
    vec4 tuning; // fovMul, cameraZ, depthScale, unused
    vec4 light;  // light x, y, z, ambient
} pc;

void main()
{
    if (vDepth <= 0.05)
        discard;

    ivec2 pixel = ivec2(gl_FragCoord.xy);
    ivec2 imageExtent = imageSize(depthImage);
    if (pixel.x < 0 || pixel.y < 0 || pixel.x >= imageExtent.x || pixel.y >= imageExtent.y)
        discard;

    uint modelDepth = uint(clamp(vDepth * pc.tuning.z, 0.0, 4294967294.0));
    bool wonDepth = false;
    for (int attempt = 0; attempt < 16; ++attempt)
    {
        uint oldDepth = imageLoad(depthImage, pixel).r;
        if (modelDepth >= oldDepth)
            discard;

        uint previous = imageAtomicCompSwap(depthImage, pixel, oldDepth, modelDepth);
        if (previous == oldDepth)
        {
            wonDepth = true;
            break;
        }
    }
    if (!wonDepth)
        discard;

    vec3 normal = normalize(vNormal);
    if (dot(normal, normal) < 1e-8)
        normal = vec3(0.0, 0.0, 1.0);

    vec3 lightPos = pc.light.xyz;
    vec3 lightDir = normalize(lightPos - vWorld);
    vec3 keyDir = normalize(vec3(-0.35, 0.55, 0.75));
    vec3 viewDir = lightDir;
    float torchFacing = abs(dot(normal, lightDir));
    float keyFacing = max(dot(normal, keyDir), 0.0);
    float verticalFacing = abs(dot(normal, vec3(0.0, 0.0, 1.0)));
    float rim = pow(clamp(1.0 - abs(dot(normal, viewDir)), 0.0, 1.0), 2.0);
    float facing = clamp(torchFacing * 0.58 + keyFacing * 0.30 + verticalFacing * 0.12 + rim * 0.20, 0.0, 1.0);
    float lightDistance = distance(vWorld, lightPos);
    float normalized = clamp(1.0 - lightDistance / max(pc.screen.w, 1.0), 0.0, 1.0);
    float distanceLight = clamp(pc.light.w + (1.0 - pc.light.w) * normalized * normalized, pc.light.w, 1.0);
    float shade = clamp(0.16 + distanceLight * (0.30 + 0.54 * facing), 0.08, 1.0);
    if (pc.tuning.w > 0.5)
        shade = max(shade, 0.90);
    vec3 color = clamp(vColor * shade, vec3(0.0), vec3(1.0));

    imageStore(outputImage, pixel, vec4(color, 1.0));
}
