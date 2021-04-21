#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include "glm/glm.hpp"
#include "glm/gtc/matrix_transform.hpp"
#include "glm/gtc/type_ptr.hpp"
#include <iostream>
#include <csignal>
#include "classes/shader.h"
#include "classes/camera.h"
#include "classes/stb_image.h"

#define ASSERT(x) \
    if (!(x))     \
        std::raise(SIGTRAP);

#define glCall(x)   \
    GLClearError(); \
    x;              \
    ASSERT(GLLogCall(#x, __FILE__, __LINE__));

int scr_width = 1024;
int scr_height = 768;

float deltaTime = 0.0f;
float lastFrame = 0.0f;

Camera camera(glm::vec3(0.0f, 2.0f, 18.0f));
float lastX = scr_width / 2.0f;
float lastY = scr_height / 2.0f;
bool firstMouse = true;

static void GLClearError();
static bool GLLogCall(const char *function, const char *file, int line);
void mouse_callback(GLFWwindow *window, double xpos, double ypos);
void framebuffer_size_callback(GLFWwindow *window, int width, int height);
void processInput(GLFWwindow *window);
void key_callback(GLFWwindow *window, int key, int scancode, int action, int mode);

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
        std::cout << "Failed to create window\n";
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
    glEnable(GL_DEPTH_TEST);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
    glfwSetKeyCallback(window, key_callback);
    glfwSetCursorPosCallback(window, mouse_callback);
    glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

    // Create vertices
    float vertices[] = {
        -0.5f, -0.5f, -0.5f, /**/ 0.0f, 0.0f,
        0.5f, -0.5f, -0.5f, /**/ 1.0f, 0.0f,
        0.5f, 0.5f, -0.5f, /**/ 1.0f, 1.0f,
        0.5f, 0.5f, -0.5f, /**/ 1.0f, 1.0f,
        -0.5f, 0.5f, -0.5f, /**/ 0.0f, 1.0f,
        -0.5f, -0.5f, -0.5f, /**/ 0.0f, 0.0f,

        -0.5f, -0.5f, 0.5f, /**/ 0.0f, 0.0f,
        0.5f, -0.5f, 0.5f, /**/ 1.0f, 0.0f,
        0.5f, 0.5f, 0.5f, /**/ 1.0f, 1.0f,
        0.5f, 0.5f, 0.5f, /**/ 1.0f, 1.0f,
        -0.5f, 0.5f, 0.5f, /**/ 0.0f, 1.0f,
        -0.5f, -0.5f, 0.5f, /**/ 0.0f, 0.0f,

        -0.5f, 0.5f, 0.5f, /**/ 1.0f, 0.0f,
        -0.5f, 0.5f, -0.5f, /**/ 1.0f, 1.0f,
        -0.5f, -0.5f, -0.5f, /**/ 0.0f, 1.0f,
        -0.5f, -0.5f, -0.5f, /**/ 0.0f, 1.0f,
        -0.5f, -0.5f, 0.5f, /**/ 0.0f, 0.0f,
        -0.5f, 0.5f, 0.5f, /**/ 1.0f, 0.0f,

        0.5f, 0.5f, 0.5f, /**/ 1.0f, 0.0f,
        0.5f, 0.5f, -0.5f, /**/ 1.0f, 1.0f,
        0.5f, -0.5f, -0.5f, /**/ 0.0f, 1.0f,
        0.5f, -0.5f, -0.5f, /**/ 0.0f, 1.0f,
        0.5f, -0.5f, 0.5f, /**/ 0.0f, 0.0f,
        0.5f, 0.5f, 0.5f, /**/ 1.0f, 0.0f,

        -0.5f, -0.5f, -0.5f, /**/ 0.0f, 1.0f,
        0.5f, -0.5f, -0.5f, /**/ 1.0f, 1.0f,
        0.5f, -0.5f, 0.5f, /**/ 1.0f, 0.0f,
        0.5f, -0.5f, 0.5f, /**/ 1.0f, 0.0f,
        -0.5f, -0.5f, 0.5f, /**/ 0.0f, 0.0f,
        -0.5f, -0.5f, -0.5f, /**/ 0.0f, 1.0f,

        -0.5f, 0.5f, -0.5f, /**/ 0.0f, 1.0f,
        0.5f, 0.5f, -0.5f, /**/ 1.0f, 1.0f,
        0.5f, 0.5f, 0.5f, /**/ 1.0f, 0.0f,
        0.5f, 0.5f, 0.5f, /**/ 1.0f, 0.0f,
        -0.5f, 0.5f, 0.5f, /**/ 0.0f, 0.0f,
        -0.5f, 0.5f, -0.5f, /**/ 0.0f, 1.0f};

    // Create Vertex Array Object
    unsigned int VAO;
    glCall(glGenVertexArrays(1, &VAO));
    glCall(glBindVertexArray(VAO));

    // Create Vertex Buffer Object
    unsigned int VBO;
    glCall(glGenBuffers(1, &VBO));

    // Bind VBO
    glCall(glBindBuffer(GL_ARRAY_BUFFER, VBO));
    glCall(glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW));

    // Vertex attribs for vertices
    glCall(glEnableVertexAttribArray(0));
    glCall(glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float) * 5, (void *)0));

    // Vertex attribs for texture coords
    glCall(glEnableVertexAttribArray(1));
    glCall(glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, sizeof(float) * 5, (void *)(3 * sizeof(float))));

    // Create shaders
    Shader shader("../res/shaders/main.vert", "../res/shaders/main.frag");

    // Load image
    int width, height, nrChannels;
    unsigned char *data = stbi_load("../res/img/grass.jpg", &width, &height, &nrChannels, 0);

    // Create a texture
    unsigned int texture;
    glCall(glGenTextures(1, &texture));

    // Bind and generate texture
    glCall(glBindTexture(GL_TEXTURE_2D, texture));
    if (data)
    {
        glCall(glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, data));
        glCall(glGenerateMipmap(GL_TEXTURE_2D));
    }
    else
    {
        std::cout << "Failed to load texture" << std::endl;
    }

    stbi_image_free(data);

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
        glm::vec3 clearColor = glm::vec3(129.0f, 161.0f, 193.0f);
        glClearColor(clearColor.x / 255, clearColor.y / 255, clearColor.z / 255, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        // Use Shader
        shader.use();

        // Projection
        glm::mat4 proj = glm::perspective(glm::radians(camera.Zoom), (float)scr_width / (float)scr_height, 0.1f, 100.0f);
        shader.setMat4("u_Projection", proj);

        // View
        glm::mat4 view = camera.GetViewMatrix();
        shader.setMat4("u_View", view);

        // Lighting
        glm::vec3 color = glm::vec3(1.0f, 1.0f, 1.0f);
        shader.setVec3("u_LightColor", color);

        // Load textures and VAO
        glCall(glActiveTexture(GL_TEXTURE0));
        glCall(glBindTexture(GL_TEXTURE_2D, texture));
        glCall(glBindVertexArray(VAO));

        for (int i = 0; i < 16; i++)
        {
            for (int j = 0; j < 1; j++)
            {
                for (int k = 0; k < 16; k++)
                {
                    // Model
                    glm::mat4 model = glm::mat4(1.0f);
                    model = glm::translate(model, glm::vec3(0.5f * i, 0.5f * j, 0.5f * k));
                    model = glm::scale(model, glm::vec3(0.5f, 0.5f, 0.5f));
                    shader.setMat4("u_Model", model);

                    // Draw
                    glCall(glDrawArrays(GL_TRIANGLES, 0, 36));
                }
            }
        }

        // Poll and swap buffers
        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    // Cleanup
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
    glBindVertexArray(0);
    glUseProgram(0);
    glfwTerminate();
    return 0;
}

void key_callback(GLFWwindow *window, int key, int scancode, int action, int mode)
{
    if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
        glfwSetWindowShouldClose(window, GL_TRUE);
    else if (key == GLFW_KEY_SPACE && action == GLFW_PRESS)
    {
        int mode;
        glGetIntegerv(GL_POLYGON_MODE, &mode);

        if (mode == GL_FILL)
            glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
        else
            glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
    }
}

void framebuffer_size_callback(GLFWwindow *window, int width, int height)
{
    scr_width = width;
    scr_height = height;
    glViewport(0, 0, width, height);
}

static void GLClearError()
{
    while (glGetError() != GL_NO_ERROR)
        ;
}

static bool GLLogCall(const char *function, const char *file, int line)
{
    while (GLenum error = glGetError())
    {
        std::cout << "[Error] (" << error << "): At " << function << " at line " << line << " in file " << file << "\n";
        return false;
    }
    return true;
}

void processInput(GLFWwindow *window)
{
    if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
        camera.ProcessKeyboard(FORWARD, deltaTime);
    if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
        camera.ProcessKeyboard(BACKWARD, deltaTime);
    if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
        camera.ProcessKeyboard(LEFT, deltaTime);
    if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
        camera.ProcessKeyboard(RIGHT, deltaTime);
}

void mouse_callback(GLFWwindow *window, double xpos, double ypos)
{
    if (firstMouse)
    {
        lastX = xpos;
        lastY = ypos;
        firstMouse = false;
    }

    float xoffset = xpos - lastX;
    float yoffset = lastY - ypos; // reversed since y-coordinates go from bottom to top

    lastX = xpos;
    lastY = ypos;

    camera.ProcessMouseMovement(xoffset, yoffset);
}