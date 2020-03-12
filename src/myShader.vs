#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor; // 颜色变量的属性位置值为 1

uniform mat4 view;
uniform mat4 projection;

out vec4 vertexColor; // 为片段着色器指定一个颜色输出

void main()
{
	gl_Position = projection * view * vec4(aPos.x,-aPos.y,aPos.z, 1.0f);
    gl_PointSize = 5.0f;
    // vertexColor = vec4(aPos.z,0,0.0,1.0);
    vertexColor = vec4(aColor,1.0f);
}