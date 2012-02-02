# Script used for the pry session in the talk:
# Works great with tmux and tslime.vim and Pry

=begin
pry -Ilib
=end

require 'bloops'
ls Bloops
b = Bloops.new
beep = b.sound Bloops::SQUARE
beep.test

ls beep
beep.square = 0.75
beep.test

b.tempo = 140
b.tune beep, "32 + C E F# 8:A G E C - 8:A 8:F# 8:F# 8:F# 2:G"
b.play

b.clear

tsh = b.sound Bloops::NOISE
tsh.volume = 0.25
tsh.attack = 0.01
tsh.decay = 0.405
tsh.sustain = 0.2
tsh.hpf = 0.65

tsh.test

=begin
.ls vendor/bloopsaphone/sounds
.cat  vendor/bloopsaphone/sounds/ice.blu
=end

ice = b.load "vendor/bloopsaphone/sounds/ice.blu"
ice.test

b.tempo = 120

b.tune tsh, "c 8 8e 8 16e 16 " * 3
b.tune ice, "8e3 16 16e# 8e 8e 8e 8e 8e 8e 8e " * 3
b.tune beep, "4e5 8 8g 4b 16 16b 8g " * 2 + "2f#5 16 8g 16g 2e"

b.play
