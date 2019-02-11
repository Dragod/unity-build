#!/bin/bash

# Sass build

#Green

GREEN=`tput setaf 2`

# Red

RED='\033[0;31m'

# Sass build only core
# Use: type "core" in the console

function core()
{
  printf "\n${GREEN} Build only core...\n\n"

  eval "grunt sd-core"

}

# Sass build only core & watch
# Use: type "core-w" in the console

function core-w()
{
  printf "\n${GREEN} Sass: Build only core & watch...\n\n"

  eval "grunt sd-core-watch"

}

# Sass build only skin colors
# Use: type "colors" in the console

function colors()
{
  printf "\n${GREEN} Sass: Build skin colors...\n\n"
  read -p "Enter brand name: " brand

  if [[ -z "$brand" ]]; then

    printf '%s\n' "No brand entered, will now exit..."
    return

  else

    eval "grunt sd-color --skin=$brand"

  fi

}

# Sass build only skin colors & watch
# Use: type "colors-w" in the console

function colors-w()
{
  printf "\n${GREEN} Sass: Build skin colors & watch...\n\n"
  read -p "Enter brand name: " brand

  if [[ -z "$brand" ]]; then

    printf '%s\n' "No brand entered, will now exit..."
    return

  else

    eval "grunt sd-color-watch --skin=$brand"

  fi

}

# Sass build core & skin colors
# Use: type "core-colors" in the console

function core-colors()
{
  printf "\n${GREEN} Sass: Build core & skin colors...\n\n"
  read -p "Enter brand name: " brand

  if [[ -z "$brand" ]]; then

    printf '%s\n' "No brand entered, will now exit..."
    return

  else

    eval "grunt sd --skin=$brand"

  fi

}

# Sass build core, skin colors & watch
# Use: type "core-colors-w" in the console

function core-colors-w()
{
  printf "\n${GREEN} Sass: Build core, skin olors & watch...\n\n"
  read -p "(brand name): " brand

  if [[ -z "$brand" ]]; then

    printf '%s\n' "No brand entered, will now exit..."
    return

  else

    eval "grunt sd-watch --skin=$brand"

  fi

}

# Sass build only admin
# Use: type "admin" in the console

function admin()
{
  printf "\n${GREEN} Sass: Build only admin...\n\n"

  eval "grunt admin"

}

# Sass build only mobile
# Use: type "mobile" in the console

function mobile()
{
  printf "\n${GREEN} Sass: Build only mobile...\n\n"

  eval "grunt mobile"

}

# Build SVG sprite
# Use: type "svg" in the console

function svg()
{
  printf "\n${GREEN} Sass: Build SVG sprite...\n\n"

  eval "grunt svg"

}

# Sass build only login
# Use: type "login" in the console

function login()
{
  printf "\n${GREEN} Sass: Build only login...\n\n"

  eval "grunt login"

}

# Show Grunt avialable tasks
# Use: type "tasks" in the console

function tasks()
{
  printf "\n${GREEN} Show Grunt tasks...\n\n"

  eval "grunt availabletasks"

}

# Sass build complete, build everything (slow)
# Use: type "complete" in the console

function complete()
{
  printf "\n${GREEN} Sass: Complete build...\n\n"
  read -p "(brand name): " brand

  if [[ -z "$brand" ]]; then

    printf '%s\n' "No brand entered, will now exit..."
    return

  else

    eval "grunt default --skin=$brand"

  fi

}
