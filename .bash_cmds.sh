#!/bin/bash

function open(){
        explorer.exe $1
}
function chrome(){
        start 'chrome.exe'
}
function lookup(){
        if [ "$1" = "-d" ]; then
                start 'chrome.exe' "$2"
        else
                start 'chrome.exe' "https://google.com/search?q=$*"
        fi
}
function push(){    
	git add .
        git commit -m "$*"
        git push
}
