// TMUX LAYERS -----> SESSION, WINDOW

tmux // start session

tmux new -s name-session 

tmux ls // list sessions

tmux a -t 0 // login in specific session

tmux kill-session -t name-session

tmux a // resume session

ctrl b d // leave session

ctrl d // end session
