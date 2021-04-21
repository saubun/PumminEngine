#include "vertex_array.h"
#include "vertex_buffer.h"
#include "vertex_buffer_layout.h"
#include "common.h"

VertexArray::VertexArray()
{
    glCall(glGenVertexArrays(1, &m_RendererID));
}

VertexArray::~VertexArray()
{
    glCall(glDeleteVertexArrays(1, &m_RendererID));
}

void VertexArray::AddBuffer(const VertexBuffer &vb, const VertexBufferLayout &layout)
{
    glCall(glBindVertexArray(m_RendererID));
    vb.Bind();
    const auto &elements = layout.GetElements();
    unsigned int offset = 0;
    for (unsigned int i = 0; i < elements.size(); i++)
    {
        const auto &element = elements[i];
        glCall(glEnableVertexAttribArray(i));
        glCall(glVertexAttribPointer(i, element.count, element.type,
                                     element.normalized, layout.GetStride(),
                                     (const void *)offset));
        offset += element.count * VertexBufferElement::GetSizeOfType(element.type);
    }
}

void VertexArray::Bind() const
{
    glCall(glBindVertexArray(m_RendererID));
}

void VertexArray::Unbind() const
{
    glCall(glBindVertexArray(0));
}
