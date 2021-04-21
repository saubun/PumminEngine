#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include "vertex_buffer.h"
#include "common.h"

VertexBuffer::VertexBuffer(const void *data, unsigned int size)
{
    glCall(glGenBuffers(1, &m_RendererID));
    glCall(glBindBuffer(GL_ARRAY_BUFFER, m_RendererID));
    glCall(glBufferData(GL_ARRAY_BUFFER, size, data, GL_STATIC_DRAW));
}

VertexBuffer::~VertexBuffer()
{
    glCall(glDeleteBuffers(0, &m_RendererID))
}

void VertexBuffer::Bind() const
{
    glCall(glBindBuffer(GL_ARRAY_BUFFER, m_RendererID));
}

void VertexBuffer::Unbind() const
{
    glCall(glBindBuffer(GL_ARRAY_BUFFER, 0));
}