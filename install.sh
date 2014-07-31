#!/bin/bash

go()
{
    PWD=`pwd`
    rm -rf ~/.screenrc
    ln -s $PWD/.screenrc ~
    echo "Installed."
}

# Already exists
if [ -a ~/.screenrc ]; then
    read -p "Overwrite existing .screenrc file? " response
    case $response in
        [Yy]*)
            go
            exit;;
        *)
            echo "Aborted."
            exit;;
    esac
fi

# Does not exist
go
