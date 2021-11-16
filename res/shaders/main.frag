#version 330 core

out vec4 FragColor;

in vec2 texCoord;

uniform vec3 u_LightColor;
uniform sampler2D u_Texture;

void main()
{
    // Apply color
    FragColor = vec4(u_LightColor, 1.0) * texture(u_Texture, texCoord);
}