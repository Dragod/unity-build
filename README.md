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

<<<<<<< HEAD
### Build alias and tasks

| Build Name    | Description                          |
|---------------|--------------------------------------|
| core          | build main unity css                 |
| colors        | build brand colors                   |
| core-colors   | build main unity css and brand colors|
| complete      | builds everything                    |
| admin         | build admin                          |
| mobile        | build mobile                         |
| login         | build login                          |
| svg           | build SVG sprite                     |
| tasks         | Show available grunt tasks           |

### Build alias and watch

| Build Name    | Description                          |
|---------------|--------------------------------------|
| core-w        | build main unity css and watch       |
| colors-w      | build brand colors and watch         |
| core-colors-w | build brand colors and watch         |
=======
### Available alias

> core (run core-w, if you want actively watch)

Build only the main unity css

> colors (run colors-w, if you want to actively watch)

Build only a specific brand color

> core-colors (run core-colors-w, if you want to actively watch)

Builds the main unity css and a specific brand color

> complete

Builds everything (slow)

> admin

Build admin

> mobile

Build mobile

> login

Build login

> svg

Build SVG sprite

> tasks

Show available grunt tasks
>>>>>>> 9cd4c6f37d7852756c0b61243549f4ecba83ca86




