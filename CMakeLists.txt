cmake_minimum_required(VERSION 3.8.0)
project(PumminEngine VERSION 0.1.0)

# Build libraries
add_subdirectory(glew)
add_subdirectory(glfw)
add_subdirectory(glm)

# Create executable for project (old)
# set(SOURCES ${SOURCES}
#     ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp
#     ${CMAKE_CURRENT_SOURCE_DIR}/src/classes/shader.cpp
#     ${CMAKE_CURRENT_SOURCE_DIR}/src/classes/camera.cpp
#     ${CMAKE_CURRENT_SOURCE_DIR}/src/classes/stb_image.cpp
#     ${CMAKE_CURRENT_SOURCE_DIR}/src/classes/cube_renderer.cpp
#     ${CMAKE_CURRENT_SOURCE_DIR}/src/classes/vertex_buffer.cpp
#     ${CMAKE_CURRENT_SOURCE_DIR}/src/classes/vertex_array.cpp

# )

# Headers (old)
# set(HEADERS ${HEADERS}
#     ${CMAKE_CURRENT_SOURCE_DIR}/src/classes/shader.h
#     ${CMAKE_CURRENT_SOURCE_DIR}/src/classes/camera.h
#     ${CMAKE_CURRENT_SOURCE_DIR}/src/classes/stb_image.h
#     ${CMAKE_CURRENT_SOURCE_DIR}/src/classes/common.h
#     ${CMAKE_CURRENT_SOURCE_DIR}/src/classes/cube_renderer.h
#     ${CMAKE_CURRENT_SOURCE_DIR}/src/classes/vertex_buffer.h
#     ${CMAKE_CURRENT_SOURCE_DIR}/src/classes/vertex_array.h
#     ${CMAKE_CURRENT_SOURCE_DIR}/src/classes/vertex_buffer_layout.h
# )

# Create Executable
set(SOURCES ${SOURCES}
    ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp
)

# Headers
set(HEADERS ${HEADERS}
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

# Use C++17
set_property(TARGET PumminEngine PROPERTY CXX_STANDARD 17)
