import subprocess

analog_sink = "alsa_output.pci-0000_05_00.6.analog-stereo"
hdmi_sink = "alsa_output.pci-0000_05_00.1.hdmi-stereo"

current_sink = subprocess.run(
    ["pactl", "get-default-sink"], capture_output=True)

current_sink = current_sink.stdout.decode("utf-8").replace("\n", "")

if current_sink == analog_sink:
    subprocess.run(["pactl", "set-default-sink", hdmi_sink])
elif current_sink == hdmi_sink:
    subprocess.run(["pactl", "set-default-sink", analog_sink])
