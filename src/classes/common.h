#ifndef COMMON_H
#define COMMON_H

#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <csignal>
#include <iostream>

#define ASSERT(x) \
    if (!(x))     \
        std::raise(SIGTRAP);

#define glCall(x)   \
    GLClearError(); \
    x;              \
    ASSERT(GLLogCall(#x, __FILE__, __LINE__));

inline void GLClearError()
{
    while (glGetError() != GL_NO_ERROR)
        ;
}

inline bool GLLogCall(const char *function, const char *file, int line)
{
    while (GLenum error = glGetError())
    {
        std::cout << "[Error] (" << error << "): At " << function << " at line " << line << " in file " << file << "\n";
        return false;
    }
    return true;
}

#endif