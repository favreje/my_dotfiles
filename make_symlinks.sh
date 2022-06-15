#!/bin/bash
# make_symlinks.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles

### Variables ###

# Dotfiles directory
dir=~/my_dotfiles

# Old dotfiles backup directory
olddir=~/my_dotfiles_old

# List of files/folders to symlink in homedir; the dot is removed to avoid confusion
# between the physical file and the symlink to the file
files="bashrc vimrc tmux.conf zshrc"

# Create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# Move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
# from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
        echo "Moving any existing dotfiles from ~ to $olddir"
        mv ~/.$file $olddir
        echo "Creating symlink to $file in home directory."
        ln -s $dir/$file ~/.$file
done
