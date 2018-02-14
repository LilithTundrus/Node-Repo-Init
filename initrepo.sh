#!/bin/bash
GREEN='\033[0;32m'
NC='\033[0m' # No Color

printf "\nNode.js Repository init Script by Lilith Tundrus v1.0.0\n"

# Create useful directories
printf "\nCreating Directories...\n"
mkdir -v ./logs
mkdir -v ./lib

# CHeck for Git
printf "\nChecking for Git...\n"
command -v git  2>&1 || { echo >&2 "I require Git but it's not installed.  Aborting."; exit 1; }
printf "${GREEN}Git exists!${NC}\n"

# Check for NPM
printf "\nChecking for NPM...\n"
command -v npm  2>&1 || { echo >&2 "I require NPM but it's not installed.  Aborting."; exit 1; }
printf "${GREEN}NPM exists!${NC}\n"

# For writing to README.MD
currentDir=${PWD##*/}


# Create our files (README, etc)
printf "\n\nWriting Initial files..."
touch README.MD
touch LICENSE
touch .gitignore
touch index.js
echo "node_modules" > .gitignore
echo "# ${currentDir}" > README.MD

printf "\n\n"


# list the files we generated
ls -alrth

# Run our repo inits
printf "\n\n"
git init
printf "\n\n"
npm init

printf "\n\n${GREEN}Done!${NC}"