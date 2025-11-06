#!/bin/bash

# Simple Linux Junk Cleaner Script with Animation
clear

# Function to display animated progress
progress_bar() {
    echo -n "Cleaning up system junk... "
    local total_steps=50
    local step=0
    while [ $step -le $total_steps ]; do
        echo -n "#"
        sleep 0.1
        ((step++))
    done
    echo -e "\nCleanup complete!"
}

# Display the initial message
echo "==============================="
echo "    Linux Junk File Cleaner    "
echo "==============================="
echo "This script will clean up temporary, cache, and log files."
echo ""

# Function to clean cache and temp files
clean_cache() {
    echo -e "\nCleaning apt cache..."
    sudo apt-get clean
    sudo apt-get autoclean
    rm -rf ~/.cache/*

    echo -e "\nCleaning thumbnail cache..."
    rm -rf ~/.cache/thumbnails/*

    echo -e "\nCleaning browser cache (Firefox)..."
    rm -rf ~/.mozilla/firefox/*.default-release/cache2/*

    echo -e "\nCleaning system logs..."
    sudo journalctl --vacuum-time=7d

    echo -e "\nCleaning user cache..."
    rm -rf ~/.cache/*
    sudo apt autoremove -y && sudo apt autoclean -y && sudo apt clean -y

    echo -e "\nCleaning old kernel versions..."
    sudo apt-get autoremove --purge -y
    
    echo -e "\Running bleachbit..."
    sudo bleachbit --preview --clean system.cache system.tmp
    sudo bleachbit --clean system.cache system.tmp system.logs system.localizations apt.autoclean apt.autoremove firefox.cache
    sudo journalctl --vacuum-time=7d && sudo rm -rf ~/.cache/* /var/tmp/* ~/.local/share/Trash/* && sudo bleachbit --clean system.cache system.tmp apt.autoclean apt.autoremove
}

progress_bar &
clean_cache
wait
