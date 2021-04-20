cmake_minimum_required(VERSION 3.8.0)
project(PumminEngine VERSION 0.1.0)

# Build libraries
add_subdirectory(glew)
add_subdirectory(glfw)

# Create executable for project
set(SOURCES ${SOURCES}
    ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/src/classes/shader.cpp
)

set(HEADERS ${HEADERS}
    ${CMAKE_CURRENT_SOURCE_DIR}/src/classes/shader.h 
)

add_executable(PumminEngine ${SOURCES} ${HEADERS})

# Includes
target_include_directories(PumminEngine PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/glew/include)
target_include_directories(PumminEngine PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/glfw/include)

# Link libraries
target_link_libraries(PumminEngine
    glfw
    libglew_static
)