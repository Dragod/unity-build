# unity-build
Bash script to run unity-build

### Alias for Bash

> A bunch of useful alias for grunt

1. This will only work on a bash command line
2. Download the  repo and copy ```grunt.sh``` file in the main project folder
3. Open a bash command line and type ```source grunt.sh```
4. Create a ```grunt-config.json``` file in your main folder and type the correct folder to automate the main.css with the skin you choose to build
```json
{
    "css": ["C:/your-unity-folder-name-here/sd-unity-4-0/css"]
}
```
5. If you done all the above correctly, you should be now able to use aliases in a bash shell

### Build alias and tasks

| Build Name    | Description                            |
|---------------|:---------------------------------------|
| core          | build main unity css                   |
| colors        | build brand colors                     |
| core-colors   | build main unity css and brand colors  |
| complete      | builds everything                      |
| admin         | build admin                            |
| mobile        | build mobile                           |
| login         | build login                            |
| svg           | build SVG sprite                       |
| tasks         | Show available grunt tasks             |

### Build alias and watch

| Build Name    | Description                            |
|---------------|:---------------------------------------|
| core-w        | build main unity css and watch         |
| colors-w      | build brand colors and watch           |
| core-colors-w | build brand colors and watch           |




