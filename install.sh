#!/bin/bash

go()
{
    PWD=`pwd`
    rm -rf ~/.screenrc
    ln -s $PWD/.screenrc ~
    echo "Installed."
}

if [ -a ~/.screenrc ]; then
    read -p "Overwrite existing .screenrc file? " response
    case $response in
        [Yy]*)
            go;;
        *)
            echo "Aborted."
            exit;;
    esac
fi
