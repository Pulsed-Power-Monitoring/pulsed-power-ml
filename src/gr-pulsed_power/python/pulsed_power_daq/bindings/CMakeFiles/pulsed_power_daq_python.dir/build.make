# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/johanna/gr-digitizers

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/johanna/gr-digitizers

# Include any dependencies generated for this target.
include python/bindings/CMakeFiles/pulsed_power_daq_python.dir/depend.make

# Include the progress variables for this target.
include python/bindings/CMakeFiles/pulsed_power_daq_python.dir/progress.make

# Include the compile flags for this target's objects.
include python/bindings/CMakeFiles/pulsed_power_daq_python.dir/flags.make

python/bindings/CMakeFiles/pulsed_power_daq_python.dir/picoscope_4000a_source_python.cc.o: python/bindings/CMakeFiles/pulsed_power_daq_python.dir/flags.make
python/bindings/CMakeFiles/pulsed_power_daq_python.dir/picoscope_4000a_source_python.cc.o: python/bindings/picoscope_4000a_source_python.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/johanna/gr-digitizers/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object python/bindings/CMakeFiles/pulsed_power_daq_python.dir/picoscope_4000a_source_python.cc.o"
	cd /home/johanna/gr-digitizers/python/bindings && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pulsed_power_daq_python.dir/picoscope_4000a_source_python.cc.o -c /home/johanna/gr-digitizers/python/bindings/picoscope_4000a_source_python.cc

python/bindings/CMakeFiles/pulsed_power_daq_python.dir/picoscope_4000a_source_python.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pulsed_power_daq_python.dir/picoscope_4000a_source_python.cc.i"
	cd /home/johanna/gr-digitizers/python/bindings && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/johanna/gr-digitizers/python/bindings/picoscope_4000a_source_python.cc > CMakeFiles/pulsed_power_daq_python.dir/picoscope_4000a_source_python.cc.i

python/bindings/CMakeFiles/pulsed_power_daq_python.dir/picoscope_4000a_source_python.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pulsed_power_daq_python.dir/picoscope_4000a_source_python.cc.s"
	cd /home/johanna/gr-digitizers/python/bindings && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/johanna/gr-digitizers/python/bindings/picoscope_4000a_source_python.cc -o CMakeFiles/pulsed_power_daq_python.dir/picoscope_4000a_source_python.cc.s

python/bindings/CMakeFiles/pulsed_power_daq_python.dir/power_calc_ff_python.cc.o: python/bindings/CMakeFiles/pulsed_power_daq_python.dir/flags.make
python/bindings/CMakeFiles/pulsed_power_daq_python.dir/power_calc_ff_python.cc.o: python/bindings/power_calc_ff_python.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/johanna/gr-digitizers/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object python/bindings/CMakeFiles/pulsed_power_daq_python.dir/power_calc_ff_python.cc.o"
	cd /home/johanna/gr-digitizers/python/bindings && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pulsed_power_daq_python.dir/power_calc_ff_python.cc.o -c /home/johanna/gr-digitizers/python/bindings/power_calc_ff_python.cc

python/bindings/CMakeFiles/pulsed_power_daq_python.dir/power_calc_ff_python.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pulsed_power_daq_python.dir/power_calc_ff_python.cc.i"
	cd /home/johanna/gr-digitizers/python/bindings && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/johanna/gr-digitizers/python/bindings/power_calc_ff_python.cc > CMakeFiles/pulsed_power_daq_python.dir/power_calc_ff_python.cc.i

python/bindings/CMakeFiles/pulsed_power_daq_python.dir/power_calc_ff_python.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pulsed_power_daq_python.dir/power_calc_ff_python.cc.s"
	cd /home/johanna/gr-digitizers/python/bindings && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/johanna/gr-digitizers/python/bindings/power_calc_ff_python.cc -o CMakeFiles/pulsed_power_daq_python.dir/power_calc_ff_python.cc.s

python/bindings/CMakeFiles/pulsed_power_daq_python.dir/mains_frequency_calc_python.cc.o: python/bindings/CMakeFiles/pulsed_power_daq_python.dir/flags.make
python/bindings/CMakeFiles/pulsed_power_daq_python.dir/mains_frequency_calc_python.cc.o: python/bindings/mains_frequency_calc_python.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/johanna/gr-digitizers/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object python/bindings/CMakeFiles/pulsed_power_daq_python.dir/mains_frequency_calc_python.cc.o"
	cd /home/johanna/gr-digitizers/python/bindings && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pulsed_power_daq_python.dir/mains_frequency_calc_python.cc.o -c /home/johanna/gr-digitizers/python/bindings/mains_frequency_calc_python.cc

python/bindings/CMakeFiles/pulsed_power_daq_python.dir/mains_frequency_calc_python.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pulsed_power_daq_python.dir/mains_frequency_calc_python.cc.i"
	cd /home/johanna/gr-digitizers/python/bindings && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/johanna/gr-digitizers/python/bindings/mains_frequency_calc_python.cc > CMakeFiles/pulsed_power_daq_python.dir/mains_frequency_calc_python.cc.i

python/bindings/CMakeFiles/pulsed_power_daq_python.dir/mains_frequency_calc_python.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pulsed_power_daq_python.dir/mains_frequency_calc_python.cc.s"
	cd /home/johanna/gr-digitizers/python/bindings && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/johanna/gr-digitizers/python/bindings/mains_frequency_calc_python.cc -o CMakeFiles/pulsed_power_daq_python.dir/mains_frequency_calc_python.cc.s

python/bindings/CMakeFiles/pulsed_power_daq_python.dir/power_calc_cc_python.cc.o: python/bindings/CMakeFiles/pulsed_power_daq_python.dir/flags.make
python/bindings/CMakeFiles/pulsed_power_daq_python.dir/power_calc_cc_python.cc.o: python/bindings/power_calc_cc_python.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/johanna/gr-digitizers/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object python/bindings/CMakeFiles/pulsed_power_daq_python.dir/power_calc_cc_python.cc.o"
	cd /home/johanna/gr-digitizers/python/bindings && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pulsed_power_daq_python.dir/power_calc_cc_python.cc.o -c /home/johanna/gr-digitizers/python/bindings/power_calc_cc_python.cc

python/bindings/CMakeFiles/pulsed_power_daq_python.dir/power_calc_cc_python.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pulsed_power_daq_python.dir/power_calc_cc_python.cc.i"
	cd /home/johanna/gr-digitizers/python/bindings && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/johanna/gr-digitizers/python/bindings/power_calc_cc_python.cc > CMakeFiles/pulsed_power_daq_python.dir/power_calc_cc_python.cc.i

python/bindings/CMakeFiles/pulsed_power_daq_python.dir/power_calc_cc_python.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pulsed_power_daq_python.dir/power_calc_cc_python.cc.s"
	cd /home/johanna/gr-digitizers/python/bindings && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/johanna/gr-digitizers/python/bindings/power_calc_cc_python.cc -o CMakeFiles/pulsed_power_daq_python.dir/power_calc_cc_python.cc.s

python/bindings/CMakeFiles/pulsed_power_daq_python.dir/python_bindings.cc.o: python/bindings/CMakeFiles/pulsed_power_daq_python.dir/flags.make
python/bindings/CMakeFiles/pulsed_power_daq_python.dir/python_bindings.cc.o: python/bindings/python_bindings.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/johanna/gr-digitizers/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object python/bindings/CMakeFiles/pulsed_power_daq_python.dir/python_bindings.cc.o"
	cd /home/johanna/gr-digitizers/python/bindings && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pulsed_power_daq_python.dir/python_bindings.cc.o -c /home/johanna/gr-digitizers/python/bindings/python_bindings.cc

python/bindings/CMakeFiles/pulsed_power_daq_python.dir/python_bindings.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pulsed_power_daq_python.dir/python_bindings.cc.i"
	cd /home/johanna/gr-digitizers/python/bindings && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/johanna/gr-digitizers/python/bindings/python_bindings.cc > CMakeFiles/pulsed_power_daq_python.dir/python_bindings.cc.i

python/bindings/CMakeFiles/pulsed_power_daq_python.dir/python_bindings.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pulsed_power_daq_python.dir/python_bindings.cc.s"
	cd /home/johanna/gr-digitizers/python/bindings && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/johanna/gr-digitizers/python/bindings/python_bindings.cc -o CMakeFiles/pulsed_power_daq_python.dir/python_bindings.cc.s

# Object files for target pulsed_power_daq_python
pulsed_power_daq_python_OBJECTS = \
"CMakeFiles/pulsed_power_daq_python.dir/picoscope_4000a_source_python.cc.o" \
"CMakeFiles/pulsed_power_daq_python.dir/power_calc_ff_python.cc.o" \
"CMakeFiles/pulsed_power_daq_python.dir/mains_frequency_calc_python.cc.o" \
"CMakeFiles/pulsed_power_daq_python.dir/power_calc_cc_python.cc.o" \
"CMakeFiles/pulsed_power_daq_python.dir/python_bindings.cc.o"

# External object files for target pulsed_power_daq_python
pulsed_power_daq_python_EXTERNAL_OBJECTS =

python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: python/bindings/CMakeFiles/pulsed_power_daq_python.dir/picoscope_4000a_source_python.cc.o
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: python/bindings/CMakeFiles/pulsed_power_daq_python.dir/power_calc_ff_python.cc.o
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: python/bindings/CMakeFiles/pulsed_power_daq_python.dir/mains_frequency_calc_python.cc.o
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: python/bindings/CMakeFiles/pulsed_power_daq_python.dir/power_calc_cc_python.cc.o
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: python/bindings/CMakeFiles/pulsed_power_daq_python.dir/python_bindings.cc.o
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: python/bindings/CMakeFiles/pulsed_power_daq_python.dir/build.make
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so.1.71.0
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: lib/libgnuradio-pulsed_power_daq.so.1.0.0.0
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libgnuradio-runtime.so.3.10.3.0
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libgnuradio-pmt.so.3.10.3.0
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.71.0
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libvolk.so.2.4
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libspdlog.so.1.5.0
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libgmpxx.so
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libgmp.so
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: /opt/picoscope/lib/libps4000a.so
python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so: python/bindings/CMakeFiles/pulsed_power_daq_python.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/johanna/gr-digitizers/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX shared module pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so"
	cd /home/johanna/gr-digitizers/python/bindings && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pulsed_power_daq_python.dir/link.txt --verbose=$(VERBOSE)
	cd /home/johanna/gr-digitizers/python/bindings && /usr/bin/strip /home/johanna/gr-digitizers/python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so

# Rule to build all files generated by this target.
python/bindings/CMakeFiles/pulsed_power_daq_python.dir/build: python/bindings/pulsed_power_daq_python.cpython-38-x86_64-linux-gnu.so

.PHONY : python/bindings/CMakeFiles/pulsed_power_daq_python.dir/build

python/bindings/CMakeFiles/pulsed_power_daq_python.dir/clean:
	cd /home/johanna/gr-digitizers/python/bindings && $(CMAKE_COMMAND) -P CMakeFiles/pulsed_power_daq_python.dir/cmake_clean.cmake
.PHONY : python/bindings/CMakeFiles/pulsed_power_daq_python.dir/clean

python/bindings/CMakeFiles/pulsed_power_daq_python.dir/depend:
	cd /home/johanna/gr-digitizers && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/johanna/gr-digitizers /home/johanna/gr-digitizers/python/bindings /home/johanna/gr-digitizers /home/johanna/gr-digitizers/python/bindings /home/johanna/gr-digitizers/python/bindings/CMakeFiles/pulsed_power_daq_python.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : python/bindings/CMakeFiles/pulsed_power_daq_python.dir/depend

