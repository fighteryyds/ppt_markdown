#!/bin/bash
# author: Haohahahaha (Haorui Zhang)
# email: 1259203802@qq.com
# date: 2023-11-19

# install jyyslide-md
sudo apt install python3
sudo apt install python3-pip
python3 -m pip install poetry
git clone https://github.com/zweix123/jyyslide-md.git
(cd jyyslide-md && python3 -m poetry install)

FILEPATH=`pwd`
# configure environment variables
echo "
export JYYSLIDE_HOME=$FILEPATH/jyyslide-md
export MYSLIDE_HOME=$FILEPATH
export MYSLIDE_SCRIPT=$MYSLIDE_HOME/scripts
alias pptnew="$MYSLIDE_SCRIPT/new.sh $1"
alias pptgen="$MYSLIDE_SCRIPT/gen.sh $1"
alias pptdel="$MYSLIDE_SCRIPT/delete.sh $1"
alias pptopen="$MYSLIDE_SCRIPT/open.sh $1"
alias pptshow="$MYSLIDE_SCRIPT/show.sh $1"
alias pptupd="$MYSLIDE_SCRIPT/update.sh"
" >> ~/.zshrc

# new gitignore file
touch .gitignore
echo "jyyslide-md" >> .gitignore

# new folder
mkdir -p $MYSLIDE_HOME/docs
mkdir -p $MYSLIDE_HOME/pages

# git initialization
git init
git config --global user.email "$USER_EMAIL"
git config --global user.name "$USER_NAME"
git remote add $REMOTE_NAME $GITHUB_REMOTE
