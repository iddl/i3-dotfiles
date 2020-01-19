# depends on pulsectl
import pulsectl

pulse = pulsectl.Pulse("headphone-switcher")
sinks = pulse.sink_list()

# find headset
headsets = [s for s in sinks if "bluez" in s.name]
assert len(headsets)
headset = headsets[0]

# find analog
analogs = [s for s in sinks if "analog" in s.name]
assert len(analogs)
analog = analogs[0]

# determine new sink
current_sink_name = pulse.server_info().default_sink_name
if current_sink_name == analog.name:
    new_sink = headset
else:
    new_sink = analog

# set new sink
pulse.default_set(new_sink)

# list sink input list
input_list = pulse.sink_input_list()
for i in input_list:
    pulse.sink_input_move(i.index, new_sink.index)

