#ifndef VERTEX_BUFFER_H
#define VERTEX_BUFFER_H

#include <GL/glew.h>
#include <GLFW/glfw3.h>

class VertexBuffer
{
private:
    unsigned int m_RendererID; // OpenGL's ID

public:
    VertexBuffer(const void *data, unsigned int size);
    ~VertexBuffer();

    void Bind() const;
    void Unbind() const;
};

#endif