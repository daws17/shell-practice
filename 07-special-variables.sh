#!/bin/bash

echo "exit status :$?"
echo "script name : $0"
echo "all variables passed to the script : $@ or $*"
echo "script name :$0"
echo "current directory :$pwd"
echo "who is running this script : $USER"
echo "home directory of the user : $HOME"
echo "process id of the current script (PID) : $$"
echo "last background process id : $!"