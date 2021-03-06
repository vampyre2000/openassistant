#!/bin/sh

# OpenAssistant 0.04
# 2016 General Public License V3
# By Andrew Vavrek, Clayton G. Hobbs, Jezra, Jonathan Kulp

# assist.sh - Assistant Launch Script

# Global Variables

export MINDDIR="$PWD/mind/stella"
export ASSISTNAME=$(hostname)
export USERNAME=$(whoami)
export VOICE="/usr/bin/festival --tts"
export BROWSER="firefox"
export KEYPRESS="xvkbd -xsendevent -secure -text"
export TERMINAL="tmux new-window "

# Set Permissions For Words Directory

chmod +wx * $MINDDIR/words

# Launch OpenAssistant In Continuous Mode
# With History Of 20 Recent Commands

python3.5 assistant.py -c -H 20 -m 0

# Launch In 'Continuous' Listen Mode: add "-c"
# Use Mic Other Than System Default: add "-m <device Number>"
# Find Mic Device Number: "cat /proc/asound/cards" Or "arecord -l"
# Pass Each Word As A Separate Argument: add "-p"
# Run Command Each Valid Sentence: "--valid-sentence-command=/path/to/command"
# Run Command Each Invalid Sentence: "--invalid-sentence-command=/path/to/command"

# Default Arguments Configured In "./etc/commands.json"
