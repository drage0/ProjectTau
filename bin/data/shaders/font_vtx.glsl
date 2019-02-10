#version 330 core
layout (location = 0) in vec4 vertex;
out vec2 TexCoords;
out vec2 pos;

uniform mat4 proj;

void main()
{
    gl_Position = proj * vec4(vertex.xy, 0.0, 1.0);
    TexCoords = vertex.zw;
	pos = vertex.xz;
}  
