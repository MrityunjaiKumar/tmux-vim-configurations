# tmux-vim-configurations
Just few setting for tmux-vim that i prefer to use

vi command | 	description
:---------:|:-------------------------------------------------------------:
0 	   |move to beginning of the current line
$ 	|move to end of line
H 	|move to the top of the current window (high)
M 	|move to the middle of the current window (middle)
L 	|move to the bottom line of the current window (low)
1G 	|move to the first line of the file
20G 	|move to the 20th line of the file
G 	|move to the last line of the file

#TMux Commands
bind j resize-pane -D 10

bind k resize-pane -U 10

bind l resize-pane -L 10

bind h resize-pane -R 10

and now I can use Ctrl-a (my prefix key) with [h|j|k|l] to resize the panes

Tmux  commands          | Descriptions 
:----------------------:|:-----------------------------------------:
tmux new -s sessionName |start new with session name


