# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.20.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.20.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/dameon0430/Documents/Dev/OpenGLCherno

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/dameon0430/Documents/Dev/OpenGLCherno/build

# Include any dependencies generated for this target.
include CMakeFiles/PumminEngine.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/PumminEngine.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/PumminEngine.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PumminEngine.dir/flags.make

CMakeFiles/PumminEngine.dir/src/main.cpp.o: CMakeFiles/PumminEngine.dir/flags.make
CMakeFiles/PumminEngine.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/PumminEngine.dir/src/main.cpp.o: CMakeFiles/PumminEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dameon0430/Documents/Dev/OpenGLCherno/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PumminEngine.dir/src/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PumminEngine.dir/src/main.cpp.o -MF CMakeFiles/PumminEngine.dir/src/main.cpp.o.d -o CMakeFiles/PumminEngine.dir/src/main.cpp.o -c /Users/dameon0430/Documents/Dev/OpenGLCherno/src/main.cpp

CMakeFiles/PumminEngine.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PumminEngine.dir/src/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dameon0430/Documents/Dev/OpenGLCherno/src/main.cpp > CMakeFiles/PumminEngine.dir/src/main.cpp.i

CMakeFiles/PumminEngine.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PumminEngine.dir/src/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dameon0430/Documents/Dev/OpenGLCherno/src/main.cpp -o CMakeFiles/PumminEngine.dir/src/main.cpp.s

CMakeFiles/PumminEngine.dir/src/classes/shader.cpp.o: CMakeFiles/PumminEngine.dir/flags.make
CMakeFiles/PumminEngine.dir/src/classes/shader.cpp.o: ../src/classes/shader.cpp
CMakeFiles/PumminEngine.dir/src/classes/shader.cpp.o: CMakeFiles/PumminEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dameon0430/Documents/Dev/OpenGLCherno/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/PumminEngine.dir/src/classes/shader.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PumminEngine.dir/src/classes/shader.cpp.o -MF CMakeFiles/PumminEngine.dir/src/classes/shader.cpp.o.d -o CMakeFiles/PumminEngine.dir/src/classes/shader.cpp.o -c /Users/dameon0430/Documents/Dev/OpenGLCherno/src/classes/shader.cpp

CMakeFiles/PumminEngine.dir/src/classes/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PumminEngine.dir/src/classes/shader.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dameon0430/Documents/Dev/OpenGLCherno/src/classes/shader.cpp > CMakeFiles/PumminEngine.dir/src/classes/shader.cpp.i

CMakeFiles/PumminEngine.dir/src/classes/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PumminEngine.dir/src/classes/shader.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dameon0430/Documents/Dev/OpenGLCherno/src/classes/shader.cpp -o CMakeFiles/PumminEngine.dir/src/classes/shader.cpp.s

CMakeFiles/PumminEngine.dir/src/classes/camera.cpp.o: CMakeFiles/PumminEngine.dir/flags.make
CMakeFiles/PumminEngine.dir/src/classes/camera.cpp.o: ../src/classes/camera.cpp
CMakeFiles/PumminEngine.dir/src/classes/camera.cpp.o: CMakeFiles/PumminEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dameon0430/Documents/Dev/OpenGLCherno/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/PumminEngine.dir/src/classes/camera.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PumminEngine.dir/src/classes/camera.cpp.o -MF CMakeFiles/PumminEngine.dir/src/classes/camera.cpp.o.d -o CMakeFiles/PumminEngine.dir/src/classes/camera.cpp.o -c /Users/dameon0430/Documents/Dev/OpenGLCherno/src/classes/camera.cpp

CMakeFiles/PumminEngine.dir/src/classes/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PumminEngine.dir/src/classes/camera.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dameon0430/Documents/Dev/OpenGLCherno/src/classes/camera.cpp > CMakeFiles/PumminEngine.dir/src/classes/camera.cpp.i

CMakeFiles/PumminEngine.dir/src/classes/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PumminEngine.dir/src/classes/camera.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dameon0430/Documents/Dev/OpenGLCherno/src/classes/camera.cpp -o CMakeFiles/PumminEngine.dir/src/classes/camera.cpp.s

CMakeFiles/PumminEngine.dir/src/classes/stb_image.cpp.o: CMakeFiles/PumminEngine.dir/flags.make
CMakeFiles/PumminEngine.dir/src/classes/stb_image.cpp.o: ../src/classes/stb_image.cpp
CMakeFiles/PumminEngine.dir/src/classes/stb_image.cpp.o: CMakeFiles/PumminEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dameon0430/Documents/Dev/OpenGLCherno/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/PumminEngine.dir/src/classes/stb_image.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PumminEngine.dir/src/classes/stb_image.cpp.o -MF CMakeFiles/PumminEngine.dir/src/classes/stb_image.cpp.o.d -o CMakeFiles/PumminEngine.dir/src/classes/stb_image.cpp.o -c /Users/dameon0430/Documents/Dev/OpenGLCherno/src/classes/stb_image.cpp

CMakeFiles/PumminEngine.dir/src/classes/stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PumminEngine.dir/src/classes/stb_image.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dameon0430/Documents/Dev/OpenGLCherno/src/classes/stb_image.cpp > CMakeFiles/PumminEngine.dir/src/classes/stb_image.cpp.i

CMakeFiles/PumminEngine.dir/src/classes/stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PumminEngine.dir/src/classes/stb_image.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dameon0430/Documents/Dev/OpenGLCherno/src/classes/stb_image.cpp -o CMakeFiles/PumminEngine.dir/src/classes/stb_image.cpp.s

CMakeFiles/PumminEngine.dir/src/classes/cube_renderer.cpp.o: CMakeFiles/PumminEngine.dir/flags.make
CMakeFiles/PumminEngine.dir/src/classes/cube_renderer.cpp.o: ../src/classes/cube_renderer.cpp
CMakeFiles/PumminEngine.dir/src/classes/cube_renderer.cpp.o: CMakeFiles/PumminEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dameon0430/Documents/Dev/OpenGLCherno/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/PumminEngine.dir/src/classes/cube_renderer.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PumminEngine.dir/src/classes/cube_renderer.cpp.o -MF CMakeFiles/PumminEngine.dir/src/classes/cube_renderer.cpp.o.d -o CMakeFiles/PumminEngine.dir/src/classes/cube_renderer.cpp.o -c /Users/dameon0430/Documents/Dev/OpenGLCherno/src/classes/cube_renderer.cpp

CMakeFiles/PumminEngine.dir/src/classes/cube_renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PumminEngine.dir/src/classes/cube_renderer.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dameon0430/Documents/Dev/OpenGLCherno/src/classes/cube_renderer.cpp > CMakeFiles/PumminEngine.dir/src/classes/cube_renderer.cpp.i

CMakeFiles/PumminEngine.dir/src/classes/cube_renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PumminEngine.dir/src/classes/cube_renderer.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dameon0430/Documents/Dev/OpenGLCherno/src/classes/cube_renderer.cpp -o CMakeFiles/PumminEngine.dir/src/classes/cube_renderer.cpp.s

CMakeFiles/PumminEngine.dir/src/classes/vertex_buffer.cpp.o: CMakeFiles/PumminEngine.dir/flags.make
CMakeFiles/PumminEngine.dir/src/classes/vertex_buffer.cpp.o: ../src/classes/vertex_buffer.cpp
CMakeFiles/PumminEngine.dir/src/classes/vertex_buffer.cpp.o: CMakeFiles/PumminEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dameon0430/Documents/Dev/OpenGLCherno/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/PumminEngine.dir/src/classes/vertex_buffer.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PumminEngine.dir/src/classes/vertex_buffer.cpp.o -MF CMakeFiles/PumminEngine.dir/src/classes/vertex_buffer.cpp.o.d -o CMakeFiles/PumminEngine.dir/src/classes/vertex_buffer.cpp.o -c /Users/dameon0430/Documents/Dev/OpenGLCherno/src/classes/vertex_buffer.cpp

CMakeFiles/PumminEngine.dir/src/classes/vertex_buffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PumminEngine.dir/src/classes/vertex_buffer.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dameon0430/Documents/Dev/OpenGLCherno/src/classes/vertex_buffer.cpp > CMakeFiles/PumminEngine.dir/src/classes/vertex_buffer.cpp.i

CMakeFiles/PumminEngine.dir/src/classes/vertex_buffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PumminEngine.dir/src/classes/vertex_buffer.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dameon0430/Documents/Dev/OpenGLCherno/src/classes/vertex_buffer.cpp -o CMakeFiles/PumminEngine.dir/src/classes/vertex_buffer.cpp.s

CMakeFiles/PumminEngine.dir/src/classes/vertex_array.cpp.o: CMakeFiles/PumminEngine.dir/flags.make
CMakeFiles/PumminEngine.dir/src/classes/vertex_array.cpp.o: ../src/classes/vertex_array.cpp
CMakeFiles/PumminEngine.dir/src/classes/vertex_array.cpp.o: CMakeFiles/PumminEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dameon0430/Documents/Dev/OpenGLCherno/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/PumminEngine.dir/src/classes/vertex_array.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PumminEngine.dir/src/classes/vertex_array.cpp.o -MF CMakeFiles/PumminEngine.dir/src/classes/vertex_array.cpp.o.d -o CMakeFiles/PumminEngine.dir/src/classes/vertex_array.cpp.o -c /Users/dameon0430/Documents/Dev/OpenGLCherno/src/classes/vertex_array.cpp

CMakeFiles/PumminEngine.dir/src/classes/vertex_array.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PumminEngine.dir/src/classes/vertex_array.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dameon0430/Documents/Dev/OpenGLCherno/src/classes/vertex_array.cpp > CMakeFiles/PumminEngine.dir/src/classes/vertex_array.cpp.i

CMakeFiles/PumminEngine.dir/src/classes/vertex_array.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PumminEngine.dir/src/classes/vertex_array.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dameon0430/Documents/Dev/OpenGLCherno/src/classes/vertex_array.cpp -o CMakeFiles/PumminEngine.dir/src/classes/vertex_array.cpp.s

# Object files for target PumminEngine
PumminEngine_OBJECTS = \
"CMakeFiles/PumminEngine.dir/src/main.cpp.o" \
"CMakeFiles/PumminEngine.dir/src/classes/shader.cpp.o" \
"CMakeFiles/PumminEngine.dir/src/classes/camera.cpp.o" \
"CMakeFiles/PumminEngine.dir/src/classes/stb_image.cpp.o" \
"CMakeFiles/PumminEngine.dir/src/classes/cube_renderer.cpp.o" \
"CMakeFiles/PumminEngine.dir/src/classes/vertex_buffer.cpp.o" \
"CMakeFiles/PumminEngine.dir/src/classes/vertex_array.cpp.o"

# External object files for target PumminEngine
PumminEngine_EXTERNAL_OBJECTS =

PumminEngine: CMakeFiles/PumminEngine.dir/src/main.cpp.o
PumminEngine: CMakeFiles/PumminEngine.dir/src/classes/shader.cpp.o
PumminEngine: CMakeFiles/PumminEngine.dir/src/classes/camera.cpp.o
PumminEngine: CMakeFiles/PumminEngine.dir/src/classes/stb_image.cpp.o
PumminEngine: CMakeFiles/PumminEngine.dir/src/classes/cube_renderer.cpp.o
PumminEngine: CMakeFiles/PumminEngine.dir/src/classes/vertex_buffer.cpp.o
PumminEngine: CMakeFiles/PumminEngine.dir/src/classes/vertex_array.cpp.o
PumminEngine: CMakeFiles/PumminEngine.dir/build.make
PumminEngine: glfw/src/libglfw3.a
PumminEngine: glew/lib/libglewd.a
PumminEngine: /Library/Developer/CommandLineTools/SDKs/MacOSX11.1.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd
PumminEngine: CMakeFiles/PumminEngine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/dameon0430/Documents/Dev/OpenGLCherno/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable PumminEngine"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PumminEngine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PumminEngine.dir/build: PumminEngine
.PHONY : CMakeFiles/PumminEngine.dir/build

CMakeFiles/PumminEngine.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PumminEngine.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PumminEngine.dir/clean

CMakeFiles/PumminEngine.dir/depend:
	cd /Users/dameon0430/Documents/Dev/OpenGLCherno/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/dameon0430/Documents/Dev/OpenGLCherno /Users/dameon0430/Documents/Dev/OpenGLCherno /Users/dameon0430/Documents/Dev/OpenGLCherno/build /Users/dameon0430/Documents/Dev/OpenGLCherno/build /Users/dameon0430/Documents/Dev/OpenGLCherno/build/CMakeFiles/PumminEngine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PumminEngine.dir/depend
