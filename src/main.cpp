#define glCheckError() glCheckError_(__FILE__, __LINE__)
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include "glm/glm.hpp"
#include "glm/gtc/matrix_transform.hpp"
#include "glm/gtc/type_ptr.hpp"
#include <iostream>
#include "classes/shader.h"

int scr_width = 1024;
int scr_height = 768;

float deltaTime = 0.0f;
float lastFrame = 0.0f;

void processInput(GLFWwindow *window);
void framebuffer_size_callback(GLFWwindow *window, int width, int height);
void error_callback(int error, const char *description);

int main(void)
{
    GLFWwindow *window;

    // Init GLFW
    if (!glfwInit())
    {
        std::cout << "Failed to initialze GLFW\n";
        return -1;
    }

    // Setup
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    // Create the window
    window = glfwCreateWindow(scr_width, scr_height, "Hello World", NULL, NULL);
    if (!window)
    {
        std::cout << "Failed to create winow\n";
        glfwTerminate();
        return -1;
    }

    // Context
    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);

    // Init GLEW
    glewExperimental = GL_TRUE;
    if (glewInit() != GLEW_OK)
    {
        std::cout << "Failed to initialze GLEW\n";
        return -1;
    }

    // Outputs
    std::cout << "GL Version: " << glGetString(GL_VERSION) << std::endl;
    std::cout << "Application Started!" << std::endl;

    // More setup
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
    glfwSetErrorCallback(error_callback);

    // Create vertices
    float vertices[] = {
        -0.5f, -0.5f, 0.0f, // 1
        0.5f, -0.5f, 0.0f,  // 2
        0.0f, 0.5f, 0.0f    // 3
    };

    // Create Vertex Array Object
    unsigned int VAO;
    glGenVertexArrays(1, &VAO);
    glBindVertexArray(VAO);

    // Create Vertex Buffer Object
    unsigned int VBO;
    glGenBuffers(1, &VBO);

    // Bind VBO
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    // Vertex attribs for vertices
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float) * 3, (void *)0);

    // Create shaders
    Shader shader("../res/shaders/main.vert", "../res/shaders/main.frag");

    // Draw mode
    glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);

    // Loop until the user closes the window
    while (!glfwWindowShouldClose(window))
    {
        // Input & deltaTime
        processInput(window);
        double time = glfwGetTime();

        // Calculate deltaTime
        deltaTime = time - lastFrame;
        lastFrame = time;

        // Clear screen
        glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        // Use Shader
        shader.use();

        // Render
        glBindVertexArray(VAO);

        glm::mat4 model = glm::mat4(1.0f);
        model = glm::rotate(model, (float)time, glm::vec3(0.0, 0.0, 1.0));
        model = glm::scale(model, glm::vec3(0.5, 0.5, 0.5));
        shader.setMat4("u_Model", model);

        glm::vec4 color = glm::vec4(1.0f, 0.0f, 0.0f, 1.0f);
        shader.setVec4("u_Color", color);

        glDrawArrays(GL_TRIANGLES, 0, 3);

        // Poll and swap buffers
        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    // Cleanup
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0);
    glfwTerminate();
    return 0;
}

void processInput(GLFWwindow *window)
{
    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
    {
        glfwSetWindowShouldClose(window, GL_TRUE);
    }
}

void framebuffer_size_callback(GLFWwindow *window, int width, int height)
{
    scr_width = width;
    scr_height = height;
    glViewport(0, 0, width, height);
}

void error_callback(int error, const char *description)
{
    fprintf(stderr, "Error: %s\n", description);
}
