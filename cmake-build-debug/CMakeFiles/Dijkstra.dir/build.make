# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.2.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.2.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = H:\NSUProgLabs\Dijkstra

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = H:\NSUProgLabs\Dijkstra\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Dijkstra.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Dijkstra.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Dijkstra.dir/flags.make

CMakeFiles/Dijkstra.dir/main.c.obj: CMakeFiles/Dijkstra.dir/flags.make
CMakeFiles/Dijkstra.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=H:\NSUProgLabs\Dijkstra\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Dijkstra.dir/main.c.obj"
	C:\tools\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Dijkstra.dir\main.c.obj   -c H:\NSUProgLabs\Dijkstra\main.c

CMakeFiles/Dijkstra.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Dijkstra.dir/main.c.i"
	C:\tools\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E H:\NSUProgLabs\Dijkstra\main.c > CMakeFiles\Dijkstra.dir\main.c.i

CMakeFiles/Dijkstra.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Dijkstra.dir/main.c.s"
	C:\tools\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S H:\NSUProgLabs\Dijkstra\main.c -o CMakeFiles\Dijkstra.dir\main.c.s

CMakeFiles/Dijkstra.dir/graph.c.obj: CMakeFiles/Dijkstra.dir/flags.make
CMakeFiles/Dijkstra.dir/graph.c.obj: ../graph.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=H:\NSUProgLabs\Dijkstra\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Dijkstra.dir/graph.c.obj"
	C:\tools\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Dijkstra.dir\graph.c.obj   -c H:\NSUProgLabs\Dijkstra\graph.c

CMakeFiles/Dijkstra.dir/graph.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Dijkstra.dir/graph.c.i"
	C:\tools\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E H:\NSUProgLabs\Dijkstra\graph.c > CMakeFiles\Dijkstra.dir\graph.c.i

CMakeFiles/Dijkstra.dir/graph.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Dijkstra.dir/graph.c.s"
	C:\tools\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S H:\NSUProgLabs\Dijkstra\graph.c -o CMakeFiles\Dijkstra.dir\graph.c.s

CMakeFiles/Dijkstra.dir/dijkstra.c.obj: CMakeFiles/Dijkstra.dir/flags.make
CMakeFiles/Dijkstra.dir/dijkstra.c.obj: ../dijkstra.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=H:\NSUProgLabs\Dijkstra\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Dijkstra.dir/dijkstra.c.obj"
	C:\tools\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Dijkstra.dir\dijkstra.c.obj   -c H:\NSUProgLabs\Dijkstra\dijkstra.c

CMakeFiles/Dijkstra.dir/dijkstra.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Dijkstra.dir/dijkstra.c.i"
	C:\tools\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E H:\NSUProgLabs\Dijkstra\dijkstra.c > CMakeFiles\Dijkstra.dir\dijkstra.c.i

CMakeFiles/Dijkstra.dir/dijkstra.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Dijkstra.dir/dijkstra.c.s"
	C:\tools\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S H:\NSUProgLabs\Dijkstra\dijkstra.c -o CMakeFiles\Dijkstra.dir\dijkstra.c.s

CMakeFiles/Dijkstra.dir/binheap.c.obj: CMakeFiles/Dijkstra.dir/flags.make
CMakeFiles/Dijkstra.dir/binheap.c.obj: ../binheap.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=H:\NSUProgLabs\Dijkstra\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/Dijkstra.dir/binheap.c.obj"
	C:\tools\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Dijkstra.dir\binheap.c.obj   -c H:\NSUProgLabs\Dijkstra\binheap.c

CMakeFiles/Dijkstra.dir/binheap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Dijkstra.dir/binheap.c.i"
	C:\tools\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E H:\NSUProgLabs\Dijkstra\binheap.c > CMakeFiles\Dijkstra.dir\binheap.c.i

CMakeFiles/Dijkstra.dir/binheap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Dijkstra.dir/binheap.c.s"
	C:\tools\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S H:\NSUProgLabs\Dijkstra\binheap.c -o CMakeFiles\Dijkstra.dir\binheap.c.s

# Object files for target Dijkstra
Dijkstra_OBJECTS = \
"CMakeFiles/Dijkstra.dir/main.c.obj" \
"CMakeFiles/Dijkstra.dir/graph.c.obj" \
"CMakeFiles/Dijkstra.dir/dijkstra.c.obj" \
"CMakeFiles/Dijkstra.dir/binheap.c.obj"

# External object files for target Dijkstra
Dijkstra_EXTERNAL_OBJECTS =

Dijkstra.exe: CMakeFiles/Dijkstra.dir/main.c.obj
Dijkstra.exe: CMakeFiles/Dijkstra.dir/graph.c.obj
Dijkstra.exe: CMakeFiles/Dijkstra.dir/dijkstra.c.obj
Dijkstra.exe: CMakeFiles/Dijkstra.dir/binheap.c.obj
Dijkstra.exe: CMakeFiles/Dijkstra.dir/build.make
Dijkstra.exe: CMakeFiles/Dijkstra.dir/linklibs.rsp
Dijkstra.exe: CMakeFiles/Dijkstra.dir/objects1.rsp
Dijkstra.exe: CMakeFiles/Dijkstra.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=H:\NSUProgLabs\Dijkstra\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable Dijkstra.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Dijkstra.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Dijkstra.dir/build: Dijkstra.exe

.PHONY : CMakeFiles/Dijkstra.dir/build

CMakeFiles/Dijkstra.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Dijkstra.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Dijkstra.dir/clean

CMakeFiles/Dijkstra.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" H:\NSUProgLabs\Dijkstra H:\NSUProgLabs\Dijkstra H:\NSUProgLabs\Dijkstra\cmake-build-debug H:\NSUProgLabs\Dijkstra\cmake-build-debug H:\NSUProgLabs\Dijkstra\cmake-build-debug\CMakeFiles\Dijkstra.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Dijkstra.dir/depend

