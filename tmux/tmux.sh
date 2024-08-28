// TMUX LAYERS -----> SESSION, WINDOW, PANES

PREFIX: CTRL B

tmux // start session

tmux new -s name-session 

tmux ls // list sessions

tmux a -t 0 // login in specific session

tmux kill-session -t name-session

tmux a // resume session

ctrl b d // leave session

ctrl d // end session


-------------------------------- PANES

ctrl b , %

ctrl b , "

ctrl b, <- -> ^ // arrows to move

ctrl b , 1 // display indexes of panes

ctrl b , hold ctrl , arrows to change sizes of panes

ctrl b, hold alt , 1 or 2

---------------------------------------- windows

ctrl b , c // new window

ctrl b, n // move around windows

ctrl b, w // move around smartly
