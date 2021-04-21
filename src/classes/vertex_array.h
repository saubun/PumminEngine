#ifndef VERTEX_ARRAY_H
#define VERTEX_ARRAY_H

#include "vertex_buffer_layout.h"
#include "vertex_buffer.h"

class VertexArray
{
private:
    unsigned int m_RendererID;

public:
    VertexArray();
    ~VertexArray();

    void AddBuffer(const VertexBuffer &vb, const VertexBufferLayout &layout);

    void Bind() const;
    void Unbind() const;
};

#endif