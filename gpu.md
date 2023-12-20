Need to pass this to kernel as commandline parameter
`amdgpu.ppfeaturemask=0xffffffff"`
You can check `/proc/cmdline` to see what was passed to the kernel

This is what worked for me. Setting the maximum wattage
`echo 100000000 > /sys/class/drm/card0/device/hwmon/hwmon0/power1_cap`
The default is 135000000 and is measured in micro watts


I think sclk is "system clock" and mclk is "memory clock"

pp is "power play" which is the brand name for their clock management. everything starts with pp

power_dpm_state - no
power_state - no
pp_cur_state - maybe. seems to be a numeric level
pp_force_state - no
pp_num_states - no
pp_power_profile_mode - no


power_dpm_force_performance_level - need to be set to manual

pp_dpm_mclk - numeric levels for memory. use this to forbid certain p-states
pp_mclk_od - one number, reflects what is in pp_dpm_mclk

pp_dpm_sclk - numeric levels for cores. use this to forbid certain p-states
pp_sclk_od - one number, reflects what is in pp_dpm_sclk

pp_od_clk_voltages - seems to have everything in it. all states for mem, cores, and voltage
use this one to set custom p-states


CoreCtl seems like a good GUI
https://gitlab.com/corectrl/corectrl

https://docs.kernel.org/gpu/amdgpu/thermal.html
https://community.amd.com/t5/graphics-cards/rx-580-black-screen-crash-after-playing-for-30-60-minutes/m-p/517556
https://unix.stackexchange.com/questions/620072/reduce-amd-gpu-wattage
https://wiki.archlinux.org/title/AMDGPU


# OpenGL
RX580 is "Polaris"
Fourth-gen "GCN"  (Graphics Core Next)
"Southern Islands" is GCN
Which means the relevant mesa driver is `radeonsi`
https://wiki.archlinux.org/title/OpenGL

