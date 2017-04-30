# tmux-vim-configurations
Just few setting for tmux-vim that i prefer to use <br/>
**Instruction to use**<br/>
1. sudo apt-get update <br/>
2. sudo apt-get install vim git <br/>
3. git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle<br/>
4. just copy .tmux.conf and .vimrc to ~/ (in case of ubuntu/other linux system)<br/>
5. Open vim and issue this command **:PluginInstall**.<br/>
6. To update plugin use **:PluginUpdate**<br/>
![git image](https://cloud.githubusercontent.com/assets/6240777/18878664/17b3ae8e-84ef-11e6-85fe-3de97dd2d5fa.png)

<br/>we can list every plugin that vundle can find on the Vim Scripts site by typing:

:Plugins
Or
:PluginSearch!
The "!" at the end of the command refreshes the local list from the Vim Scripts site.
If we want to search for a specific plugin, we can use this same syntax like this: **:PluginSearch! plugin_query**

command | 	description
:--------------------:|:-------------------------------------------------------------:
0 	   |move to beginning of the current line
$ 	|move to end of line
H 	|move to the top of the current window (high)
M 	|move to the middle of the current window (middle)
L 	|move to the bottom line of the current window (low)
1G 	|move to the first line of the file
20G 	|move to the 20th line of the file
G 	|move to the last line of the file
:new filename.ext|create new document inside vim
:vert new filename.ext|open a new window beside the current one
1 followed by Ctrl+G| see the full path of the current file. 
sp filename | for opening a file n horizontal split
vsp filename or vs filename | for vertical split
CTRL-W > | wider
CTRL-W < | narrower

##vim commands for auto word-completion

**Word or pattern completion**
CTRL-x CTRL-n : Word completion – forward <br/>
CTRL-x CTRL-p : Word completion – backward<br/>

**Line completion**
Ctrl-x Ctrl-l

**Dictionary word completion**
Ctrl-x Ctrl-k

**File name completion**
Ctrl-x Ctrl-f

#TMux Commands
bind j resize-pane -D 10 <br/>
bind k resize-pane -U 10 <br/>
bind l resize-pane -L 10 <br/>
bind h resize-pane -R 10 <br/>

and now I can use Ctrl-a (my prefix key) with [h|j|k|l] to resize the panes

Reloading TMUX config<br/>
**:source-file ~/.tmux.conf**<br/>
Or simply from a shell:<br/>

**tmux source-file ~/.tmux.conf**

#Playing with different windows (commands are followed after prefix key)
Tmux command| Descriptions
:----------:|:---------------------------------------:
c|   create window <br/>
w|   list windows <br/>
n|   next window <br/>
p|   previous window <br/>
f|   find window <br/>
,|   name window <br/>
&|  kill window

#playing with planes in TMUX
Tmux command| Descriptions                                                     
:----------:|:---------------------------------------:        
%  |vertical split
"  |horizontal split
o  |swap panes
q  |show pane numbers
x  |kill pane
+  |break pane into window (e.g. to select text by mouse to copy)
-  |restore pane from window
left|       go to the next pane on the left
right|      (or one of these other directions)
up|
down|
o |         go to the next pane (cycle through all of them)
;  |        go to the ‘last’ (previously used) pane

Tmux  commands             | Descriptions 
:-------------------------:|:-----------------------------------------:
tmux a -t sessionName | attach to a sesssion 
t  |big clock
?  |list shortcuts
:  |prompt
list disconnected session| tmux ls (in terminal outside tmux session)
tmux a -t sessionName | aattach to a session eg.  **tmux attach -t 0**
#Changing NERDTree bar width
To view current value of size => **:let g:NERDTreeWinSize**<br/>
To set the window size to some other value => **:let g:NERDTreeWinSize=20**<br/>
To make this change permanent, put this line in your vimrc file=> **let g:NERDTreeWinSize=20**

