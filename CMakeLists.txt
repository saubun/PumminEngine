cmake_minimum_required(VERSION 3.8.0)
project(PumminEngine VERSION 0.1.0)

# Build libraries
add_subdirectory(glew)
add_subdirectory(glfw)
add_subdirectory(glm EXCLUDE_FROM_ALL)

# Create executable for project
add_executable(PumminEngine src/main.cpp)

# Includes
target_include_directories(PumminEngine PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/glew/include)
target_include_directories(PumminEngine PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/glfw/include)
target_include_directories(PumminEngine PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/glm)

# Link libraries
target_link_libraries(PumminEngine
    glfw
    libglew_static
)