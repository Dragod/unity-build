# Unity-build
Bash script to run unity grunt tasks and automate main.css skin color path

### How to use:

1. This will only work on a ```bash/git-bash``` command line
2. Download/clone the repo and copy ```grunt.sh``` & ```grunt-config.json``` in the main unity folder
3. Change the path in ```grunt-config.json``` to match your unity path:
```json
{
    "css": ["C:/your-unity-folder-name-here/sd-unity-4-0/css"]
}
```
4. Make sure ```grunt-config.json``` is *NOT* tracked by git as everyone might use a different directory path on they're own machine, if this is tracked by git it might break the automation on main.css skin path

5. Open a bash command line and type ```source grunt.sh```

6. If you done all the above correctly, you should be now able to use aliases in a bash shell

### Build alias and tasks

| Bash command | Description                               |
|:--------------|:-----------------------------------------|
| core          | build unity core                         |
| colors        | build brand colors                       |
| core-colors   | builds unity core & brand colors         |
| complete      | builds everything                        |
| admin         | build admin                              |
| mobile        | build mobile                             |
| login         | build login                              |
| svg           | build SVG sprite                         |
| tasks         | Show available grunt tasks               |

### Build alias and watch

| Bash command  | Description                              |
|:--------------|:-----------------------------------------|
| core-w        | build unity core & watch                 |
| colors-w      | build brand colors and watch             |
| core-colors-w | build unity core, brand colors & watch   |




