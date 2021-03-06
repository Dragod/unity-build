#!/bin/bash

# Sass build

# Green

GREEN=`tput setaf 2`

# Red

RED=`tput setaf 1`

# Bold

BOLD=`tput bold`

# Blue

BLUE='\033[00;34m'

# Light purple

LIGHT_PURPLE='\e[1;35m'

# Create an array from an external configuration file

readarray -t pathName < <(grep '"' grunt-config.json | cut -d '"' -f4)

# Sass build only core
# Use: type "core" in the console

function core()
{

  # User input message

  printf "\n${GREEN}Sass: Building core...\n\n"

  # Build sass

  eval "grunt core"

}

# Sass build only core & watch
# Use: type "core-w" in the console

function core-w()
{
  # User input message

  printf "\n${GREEN}Sass: Building core & watch...\n\n"

  # Build sass

  eval "grunt core-watch"

}

# Sass build only skin colors
# Use: type "colors" in the console

function colors()
{
  printf "\n${GREEN}Sass: Building skin colors...\n\n"
  read -p "Enter brand name: " brand

  if [[ -z "$brand" ]]; then

    printf '%s\n' "No brand entered, will now exit..."
    return

  else

    printf "\n${GREEN}Override @import in main.css with $brand, path: ${pathName[@]} ${NC}\n\n"

    #Override the main.css

    echo "@import url(\"../css/app.css\"); @import url(\"../assets/$brand/css/$brand.css\");" >${pathName[@]}/main.css

    # Build sass

    eval "grunt colors --skin=$brand"

  fi

}

# Sass build only skin colors & watch
# Use: type "colors-w" in the console

function colors-w()
{
  printf "\n${GREEN}Sass: Build skin colors & watch...\n\n"
  read -p "Enter brand name: " brand

  if [[ -z "$brand" ]]; then

    printf '%s\n' "No brand entered, will now exit..."
    return

  else

    printf "\n${GREEN}Override @import in main.css with $brand, path: ${pathName[@]} ${NC}\n\n"

    #Override the main.css

    echo "@import url(\"../css/app.css\"); @import url(\"../assets/$brand/css/$brand.css\");" >${pathName[@]}/main.css

    # Build sass

    eval "grunt colors-watch --skin=$brand"

  fi

}

# Sass build core & skin colors
# Use: type "core-colors" in the console

function core-colors()
{
  printf "\n${GREEN}Sass: Building core & skin colors...\n\n"
  read -p "Enter brand name: " brand

  if [[ -z "$brand" ]]; then

    printf '%s\n' "No brand entered, will now exit..."
    return

  else

    printf "\n${GREEN}Override @import in main.css with $brand, path: ${pathName[@]} ${NC}\n\n"

    #Override the main.css

    echo "@import url(\"../css/app.css\"); @import url(\"../assets/$brand/css/$brand.css\");" >${pathName[@]}/main.css

    # Build sass

    eval "grunt core-colors --skin=$brand"

  fi

}

# Sass build core, skin colors & watch
# Use: type "core-colors-w" in the console

function core-colors-w()
{
  printf "\n${GREEN}Sass: Building core, skin olors & watch...\n\n"
  read -p "Enter brand name: " brand

  if [[ -z "$brand" ]]; then

    printf '%s\n' "No brand entered, will now exit..."
    return

  else

    printf "\n${GREEN}Override @import in main.css with $brand, path: ${pathName[@]} ${NC}\n\n"

    #Override the main.css

    echo "@import url(\"../css/app.css\"); @import url(\"../assets/$brand/css/$brand.css\");" >${pathName[@]}/main.css

    # Build sass

    eval "grunt core-colors-watch --skin=$brand"

  fi

}

# Sass build only admin
# Use: type "admin" in the console

function admin()
{
  printf "\n${GREEN}Sass: Building admin...\n\n"

  eval "grunt admin"

}

# Sass build only admin and watch
# Use: type "admin" in the console

function admin-w()
{
  printf "\n${GREEN}Sass: Building admin & watch...\n\n"

  eval "grunt admin-watch"

}

# Sass build only mobile
# Use: type "mobile" in the console

function mobile()
{
  printf "\n${GREEN}Sass: Building mobile...\n\n"

  eval "grunt mobile"

}

# Build SVG sprite
# Use: type "svg" in the console

function svg()
{
  printf "\n${GREEN}Building SVG sprite...\n\n"

  eval "grunt svg"

}

# Sass build only login
# Use: type "login" in the console

function login()
{
  printf "\n${GREEN}Sass: Building login...\n\n"

  eval "grunt login"

}

# Show Grunt avialable tasks
# Use: type "tasks" in the console

function tasks()
{
  printf "\n${GREEN}Show Grunt tasks...\n\n"

  eval "grunt availabletasks"

}

# Sass build complete, build everything (slow)
# Use: type "complete" in the console

function complete()
{
  printf "\n${GREEN}Sass: Doing complete build...\n\n"
  read -p "Enter brand name: " brand

  if [[ -z "$brand" ]]; then

    printf '%s\n' "No brand entered, will now exit..."
    return

  else

    printf "\n${GREEN}Override @import in main.css with $brand, path: ${pathName[@]} ${NC}\n\n"

    #Override the main.css

    echo "@import url(\"../css/app.css\"); @import url(\"../assets/$brand/css/$brand.css\");" >${pathName[@]}/main.css

    # User input message

    eval "grunt default --skin=$brand"

  fi

}

# Clear bash for real (using "clear" doesn't really work)

alias cls='printf "\033c"'

# Print available build once the script is loaded

function sass-build {
  printf "\n${GREEN}"
  printf "core         -->    Build core\n"
  printf "core-w       -->    Build core and watch\n"
  printf "colors       -->    Build skin colors\n"
  printf "core-colors  -->    Builds core & skin colors\n"
  printf "complete     -->    Builds everything & skin colors\n"
  printf "admin        -->    Build admin\n"
  printf "login        -->    Build login\n"
  printf "mobile       -->    Build mobile\n"
  printf "svg          -->    Build SVG sprite\n"
  printf "tasks        -->    Show available grunt tasks\n\n"
}

printf "\n${GREEN}Sass build script ready...\n"
printf '\nType: "sass-build" to see a list of available builds\n\n'