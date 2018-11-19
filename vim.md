#vim editor
esc # to command mode
i # to insert mode
o # to insert mode on the begining of line
:w # save
:q # quit
:q! # quit without saving
dd # delete line
ctrl+v # visual block mode
	arrows
	shift+left/right
	x/d # delete block first char
	shift+i # to insert mode
/reg + enter # search
	n # next
	N # previous
R # replace mod
yy or Y # copy the line
p or P # paste after of before current line
u # undo
U # undo whole line
ctrl + R # reundo
A # append text to the end
0 # move to line 0
:neco + ctrl + d # command help
:neco + tab # command completation
:s/old/new/g # substitution
:!ls # shell commands
gg # page start
G # page end
% # to find a matching ),], or }

echo set clipboard=unnamed >> ~/.vimrc # to solve vim E353: Nothing in register "
