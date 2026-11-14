# compilation
    vlog clkg_ufd.v -l comp.log
# elaboration
  vsim -voptargs=+acc clkg_ufd +freq=50 +duty=35 
# addwave
  add wave sim:/clkg_ufd/*
# run
  run -all
