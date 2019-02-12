# Unity-build
Bash script to run unity sass builds

### How to use:

1. This will only work on a ```bash/git-bash``` command line
2. Download/clone the repo and copy ```grunt.sh``` & ```grunt-config.json``` in the main unity folder
3. Change the path in ```grunt-config.json``` to match your unity path:
```json
{
    "css": ["C:/your-unity-folder-name-here/sd-unity-4-0/css"]
}
```
4. Open a bash command line and type ```source grunt.sh```

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




