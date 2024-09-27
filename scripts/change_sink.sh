ANALOG_SINK="alsa_output.pci-0000_05_00.6.analog-stereo"
HDMI_SINK="alsa_output.pci-0000_05_00.1.hdmi-stereo"

current_sink=$(pactl get-default-sink)

[ $current_sink == $ANALOG_SINK ] && pactl set-default-sink $HDMI_SINK
[ $current_sink == $HDMI_SINK ] && pactl set-default-sink $ANALOG_SINK
