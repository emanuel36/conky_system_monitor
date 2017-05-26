background yes
update_interval 1

cpu_avg_samples 2
net_avg_samples 2
temperature_unit celsius

double_buffer yes
no_buffers yes
text_buffer_size 2048
alignment top_middle
gap_x 0
gap_y 0
minimum_size 0
maximum_width 0
own_window yes
own_window_type dock
own_window_transparent yes
own_window_colour 000000
own_window_hints undecorated,below,sticky,skip_taskbar,skip_pager
own_window_argb_visual yes
own_window_argb_value 128
border_inner_margin 0
border_outer_margin 0


draw_shades no
draw_outline no
draw_borders no
draw_graph_borders no
default_shade_color cdced0

override_utf8_locale yes
use_xft yes
xftfont Open Sans:size=10
xftalpha 1
uppercase yes

default_color cdced0

TEXT


${alignc}${font ubuntu:size=80}${time %H:}${color cdced0}${time %M}${color cdced0}
${alignc}${voffset -65}${font ubuntu:size=20} ${time %A} |  ${time %d de %B}


