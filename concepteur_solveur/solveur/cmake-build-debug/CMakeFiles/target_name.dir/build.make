# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /home/audran/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/211.7142.21/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/audran/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/211.7142.21/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/audran/Code/projet-cir/concepteur_solveur/solveur

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/audran/Code/projet-cir/concepteur_solveur/solveur/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/target_name.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/target_name.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/target_name.dir/flags.make

CMakeFiles/target_name.dir/src/main.c.o: CMakeFiles/target_name.dir/flags.make
CMakeFiles/target_name.dir/src/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/audran/Code/projet-cir/concepteur_solveur/solveur/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/target_name.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/target_name.dir/src/main.c.o -c /home/audran/Code/projet-cir/concepteur_solveur/solveur/src/main.c

CMakeFiles/target_name.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/target_name.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/audran/Code/projet-cir/concepteur_solveur/solveur/src/main.c > CMakeFiles/target_name.dir/src/main.c.i

CMakeFiles/target_name.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/target_name.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/audran/Code/projet-cir/concepteur_solveur/solveur/src/main.c -o CMakeFiles/target_name.dir/src/main.c.s

CMakeFiles/target_name.dir/src/simulation.c.o: CMakeFiles/target_name.dir/flags.make
CMakeFiles/target_name.dir/src/simulation.c.o: ../src/simulation.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/audran/Code/projet-cir/concepteur_solveur/solveur/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/target_name.dir/src/simulation.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/target_name.dir/src/simulation.c.o -c /home/audran/Code/projet-cir/concepteur_solveur/solveur/src/simulation.c

CMakeFiles/target_name.dir/src/simulation.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/target_name.dir/src/simulation.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/audran/Code/projet-cir/concepteur_solveur/solveur/src/simulation.c > CMakeFiles/target_name.dir/src/simulation.c.i

CMakeFiles/target_name.dir/src/simulation.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/target_name.dir/src/simulation.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/audran/Code/projet-cir/concepteur_solveur/solveur/src/simulation.c -o CMakeFiles/target_name.dir/src/simulation.c.s

# Object files for target target_name
target_name_OBJECTS = \
"CMakeFiles/target_name.dir/src/main.c.o" \
"CMakeFiles/target_name.dir/src/simulation.c.o"

# External object files for target target_name
target_name_EXTERNAL_OBJECTS =

target_name: CMakeFiles/target_name.dir/src/main.c.o
target_name: CMakeFiles/target_name.dir/src/simulation.c.o
target_name: CMakeFiles/target_name.dir/build.make
target_name: CMakeFiles/target_name.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/audran/Code/projet-cir/concepteur_solveur/solveur/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable target_name"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/target_name.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/target_name.dir/build: target_name

.PHONY : CMakeFiles/target_name.dir/build

CMakeFiles/target_name.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/target_name.dir/cmake_clean.cmake
.PHONY : CMakeFiles/target_name.dir/clean

CMakeFiles/target_name.dir/depend:
	cd /home/audran/Code/projet-cir/concepteur_solveur/solveur/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/audran/Code/projet-cir/concepteur_solveur/solveur /home/audran/Code/projet-cir/concepteur_solveur/solveur /home/audran/Code/projet-cir/concepteur_solveur/solveur/cmake-build-debug /home/audran/Code/projet-cir/concepteur_solveur/solveur/cmake-build-debug /home/audran/Code/projet-cir/concepteur_solveur/solveur/cmake-build-debug/CMakeFiles/target_name.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/target_name.dir/depend
