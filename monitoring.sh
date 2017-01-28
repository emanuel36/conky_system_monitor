################################
#Developed By: Emanuel Angelim#
#email: emanuel_ec@alu.ufc.br #
###############################

gap_x 20
gap_y 30
alignment top_right
update_interval 0.4
use_xft yes
stippled_borders 5  
xftfont ubuntu:size=11:size=8
own_window yes
own_window_type dock
own_window_transparent 
own_window_colour 000000
own_window_hints undecorated,below,sticky,skip_taskbar,skip_pager
own_window_argb_visual yes
own_window_argb_value 128
double_buffer yes
draw_shades no
draw_graph_borders no
uppercase yes
default_bar_size 0 4
default_graph_size 0 24
border_inner_margin 16
default_color ffffff
default_shade_color 333333    
default_outline_color black 
color1 cdced0     
color2 43b6b8     
color3 ff6f00


TEXT
system
${color2}${alignc}${nodename}
${color2}${alignc}linux ${kernel}

${color1}${font ubuntu:size=11}Processor 
${offset 35}${color1}Uptime: ${color2}${uptime}
#${offset 35}${color1}Temperature: ${color3}${exec sensors | grep -n 'CPU' | awk -F'+' '{print $2}' | awk -F' ' '{print $1}'}
${offset 35}${color1}Frq: ${color2}${freq_g 0} GHz
${offset 35}${color1}Used: ${color2}${cpu}%
${alignr}${voffset -25}${cpugraph cpu0 21,170 000000 43b6b8}

${color1}memory: 
${offset 35}${color1}${membar 9 /home}
${offset 35}${color1}Used: ${color2}${memperc}%${color2}${goto 225}${mem}/${memmax}

#Processers
${color1}${font ubuntu:size=11} Processes
${offset 35}${color1}run: ${color2}${running_processes}
${offset 35}${color1}run background: ${color2}${processes}
${offset 35}${color1}top CPU   : ${color2}${top name 1}${goto 250}${color2}${alignr}${top cpu 1}%
${offset 35}${color1}top RAM  : ${color2}${top_mem name 1}${goto 250}${color2}${alignr}${top_mem mem 1}%

${color1}${font ubuntu:size=11} Transfers
${offset 35}${color1}Up    : ${color2}${upspeed wlp8s0}${alignr}${color1}
${offset 35}${color1}Total : ${color2}${totalup wlp8s0}
${alignr}${voffset -30}${upspeedgraph wlp8s0 21,150 000000 43b6b8}
${offset 35}${color1}Down  : ${color2}${downspeed wlp8s0}${alignr}${color1}
${offset 35}${color1}Total : ${color2}${totaldown wlp8s0}
${alignr}${voffset -30}${downspeedgraph wlp8s0 21,145 000000 43b6b8}

${color1}${font ubuntu:size=11} Network${if_existing /proc/net/route wlp8s0}
${offset 35}${color1}Force : ${color2}${wireless_link_qual_perc wlp8s0}%
${offset 35}${color1}Type  : ${color2}${gw_iface}
${offset 35}${color1}Name  : ${color2}${wireless_essid wlp8s0}${else}
${offset 35}${color1}Force : ${color2}unknown
${offset 35}${color1}Type  : ${color2}unknown
${offset 35}${color1}Name  : ${color2}unknown${endif}

${color1}${font ubuntu:size=11} Address IP${if_existing /proc/net/route wlp8s0}
${offset 35}${color1}Locl. : ${color2}${addr wlp8s0}
${offset 35}${color1}Pass. : ${color2}${gw_ip}
${else}
${offset 35}${color1}Locl. : ${color2}xxx.xxx.xxx.xxx
${offset 35}${color1}Pass. : ${color2}xxx.xxx.xxx.xxx${endif}

${color1}${font ubuntu:size=11} Hard Drive 
#${offset 35}${color1}Temperature: ${color3}${hddtemp}°C
${offset 35}${color1}${font ubuntu:size=11} Reads: ${color2}${diskio_read}/s
${alignr}${voffset -30}${diskiograph_read 21,130 000000 43b6b8}
${offset 35}${color1}${font ubuntu:size=11} Writes: ${color2}${diskio_write}/s
${alignr}${voffset -30}${diskiograph_write 21,130 000000 43b6b8}
${offset 35}${color1}${fs_bar 9 /home}
${offset 35}${color1}FS: ${color2}${fs_type}${goto 140}${color1}Used: ${color2}${fs_used_perc /home}%${alignr}${color1}Free: ${color2}${fs_free /home}
${color1}${font ubuntu:size=7}Developed By: Emanuel Angelim