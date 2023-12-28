transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+id_sprite  -L xpm -L blk_mem_gen_v8_4_6 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.id_sprite xil_defaultlib.glbl

do {id_sprite.udo}

run 1000ns

endsim

quit -force