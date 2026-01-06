#!/usr/bin/env bash

SESSION="upawa"

# Check if session already exists
tmux has-session -t "$SESSION" 2>/dev/null
if [ $? -eq 0 ]; then
  tmux attach -t "$SESSION"
  exit 0
fi

# Create new detached session with first window
tmux new-session -d -s "$SESSION" -n "zsh "

# Window 2: nvim
tmux new-window -t "$SESSION" -n "nvim "

# Window 3: code
tmux new-window -t "$SESSION" -n "code 󱙺"

# Window 4: run
tmux new-window -t "$SESSION" -n "run "

# Window 5: docker
tmux new-window -t "$SESSION" -n "docker "

# Select first window
tmux select-window -t "$SESSION:zsh"

# Attach
tmux attach -t "$SESSION"
