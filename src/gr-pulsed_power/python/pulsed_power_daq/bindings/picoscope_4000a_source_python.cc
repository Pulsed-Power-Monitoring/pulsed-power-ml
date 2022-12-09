/*
 * Copyright 2021 Free Software Foundation, Inc.
 *
 * This file is part of GNU Radio
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 *
 */

/***********************************************************************************/
/* This file is automatically generated using bindtool and can be manually edited  */
/* The following lines can be configured to regenerate this file during cmake      */
/* If manual edits are made, the following tags should be modified accordingly.    */
/* BINDTOOL_GEN_AUTOMATIC(0)                                                       */
/* BINDTOOL_USE_PYGCCXML(0)                                                        */
/* BINDTOOL_HEADER_FILE(picoscope_4000a_source.h) */
/* BINDTOOL_HEADER_FILE_HASH(c790fadb9688883a2826764192241572)                     */
/***********************************************************************************/

#include <pybind11/complex.h>
#include <pybind11/pybind11.h>
#include <pybind11/stl.h>

namespace py = pybind11;

#include <gnuradio/pulsed_power/picoscope_4000a_source.h>
#include </opt/picoscope/include/libps4000a/PicoStatus.h>
#include </opt/picoscope/include/libps4000a/ps4000aApi.h>
// pydoc.h is automatically generated in the build directory
#include <picoscope_4000a_source_pydoc.h>

void bind_picoscope_4000a_source(py::module& m)
{
    using picoscope_4000a_source = gr::pulsed_power::picoscope_4000a_source;
    // TODO: https://stackoverflow.com/questions/47893832/pybind11-global-level-enum

    py::enum_<gr::pulsed_power::coupling_t>(m, "coupling_t")
        .value("DC_1M", gr::pulsed_power::DC_1M)   // 0
        .value("AC_1M", gr::pulsed_power::AC_1M)   // 1
        .value("DC_50R", gr::pulsed_power::DC_50R) // 2
        .export_values();

    py::implicitly_convertible<int, gr::pulsed_power::coupling_t>();

    py::enum_<gr::pulsed_power::downsampling_mode_t>(m, "downsampling_mode_t")
        .value("DOWNSAMPLING_MODE_NONE", gr::pulsed_power::DOWNSAMPLING_MODE_NONE) // 0
        .value("DOWNSAMPLING_MODE_MIN_MAX_AGG",
               gr::pulsed_power::DOWNSAMPLING_MODE_MIN_MAX_AGG) // 1
        .value("DOWNSAMPLING_MODE_DECIMATE",
               gr::pulsed_power::DOWNSAMPLING_MODE_DECIMATE) // 2
        .value("DOWNSAMPLING_MODE_AVERAGE",
               gr::pulsed_power::DOWNSAMPLING_MODE_AVERAGE) // 3
        .export_values();

    py::implicitly_convertible<int, gr::pulsed_power::downsampling_mode_t>();

    py::class_<picoscope_4000a_source,
               gr::sync_block,
               gr::block,
               gr::basic_block,
               std::shared_ptr<picoscope_4000a_source>>(
        m, "picoscope_4000a_source", D(picoscope_4000a_source))

        .def(py::init(&picoscope_4000a_source::make),
             py::arg("serial_number"),
             py::arg("auto_arm"),
             D(picoscope_4000a_source, make))

        .def("set_trigger_once",
             &picoscope_4000a_source::set_trigger_once,
             py::arg("trigger_once"),
             D(picoscope_4000a_source, set_trigger_once))
        .def("set_samp_rate",
             &picoscope_4000a_source::set_samp_rate,
             py::arg("samp_rate"),
             D(picoscope_4000a_source, set_samp_rate))
        .def("set_downsampling",
             &picoscope_4000a_source::set_downsampling,
             py::arg("downsampling_mode"),
             py::arg("downsampling_factor"),
             D(picoscope_4000a_source, set_downsampling))
        .def("set_aichan_trigger",
             &picoscope_4000a_source::set_aichan_trigger,
             py::arg("id"),
             py::arg("direction"),
             py::arg("threshold"),
             D(picoscope_4000a_source, set_aichan_trigger))
        .def("set_aichan",
             &picoscope_4000a_source::set_aichan,
             py::arg("id"),
             py::arg("enabled"),
             py::arg("range"),
             py::arg("coupling"),
             py::arg("range_offset"),
             D(picoscope_4000a_source, set_aichan))

        .def("set_aichan_a",
             &picoscope_4000a_source::set_aichan_a,
             py::arg("enabled"),
             py::arg("range"),
             py::arg("coupling"),
             py::arg("range_offset"),
             D(picoscope_4000a_source, set_aichan_a))
        .def("set_aichan_b",
             &picoscope_4000a_source::set_aichan_b,
             py::arg("enabled"),
             py::arg("range"),
             py::arg("coupling"),
             py::arg("range_offset"),
             D(picoscope_4000a_source, set_aichan_b))
        .def("set_aichan_c",
             &picoscope_4000a_source::set_aichan_c,
             py::arg("enabled"),
             py::arg("range"),
             py::arg("coupling"),
             py::arg("range_offset"),
             D(picoscope_4000a_source, set_aichan_c))
        .def("set_aichan_d",
             &picoscope_4000a_source::set_aichan_d,
             py::arg("enabled"),
             py::arg("range"),
             py::arg("coupling"),
             py::arg("range_offset"),
             D(picoscope_4000a_source, set_aichan_d))
        .def("set_aichan_e",
             &picoscope_4000a_source::set_aichan_e,
             py::arg("enabled"),
             py::arg("range"),
             py::arg("coupling"),
             py::arg("range_offset"),
             D(picoscope_4000a_source, set_aichan_e))
        .def("set_aichan_f",
             &picoscope_4000a_source::set_aichan_f,
             py::arg("enabled"),
             py::arg("range"),
             py::arg("coupling"),
             py::arg("range_offset"),
             D(picoscope_4000a_source, set_aichan_f))
        .def("set_aichan_g",
             &picoscope_4000a_source::set_aichan_g,
             py::arg("enabled"),
             py::arg("range"),
             py::arg("coupling"),
             py::arg("range_offset"),
             D(picoscope_4000a_source, set_aichan_g))
        .def("set_aichan_h",
             &picoscope_4000a_source::set_aichan_h,
             py::arg("enabled"),
             py::arg("range"),
             py::arg("coupling"),
             py::arg("range_offset"),
             D(picoscope_4000a_source, set_aichan_h))

        .def("set_nr_buffers",
             &picoscope_4000a_source::set_nr_buffers,
             py::arg("nr_buffers"),
             D(picoscope_4000a_source, set_nr_buffers))
        .def("set_streaming",
             &picoscope_4000a_source::set_streaming,
             py::arg("poll_rate"),
             D(picoscope_4000a_source, set_streaming))
        .def("set_driver_buffer_size",
             &picoscope_4000a_source::set_driver_buffer_size,
             py::arg("driver_buffer_size"),
             D(picoscope_4000a_source, set_driver_buffer_size))
        .def("set_rapid_block",
             &picoscope_4000a_source::set_rapid_block,
             py::arg("nr_waveforms"),
             D(picoscope_4000a_source, set_rapid_block))
        .def("set_samples",
             &picoscope_4000a_source::set_samples,
             py::arg("pre_samples"),
             py::arg("post_samples"),
             D(picoscope_4000a_source, set_samples))
        .def("set_buffer_size",
             &picoscope_4000a_source::set_buffer_size,
             py::arg("buffer_size"),
             D(picoscope_4000a_source, set_buffer_size))

        ;
}
