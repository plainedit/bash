
## Start using PlainEdit [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/plainedit/bash/edit/main/DOCS/START.md)

List of projects
```bash
./plainedit.sh
```

INPUT and OUTPUT file
```bash
./plainedit.sh "in.md" "out.md"
```

Run macro for 1/in.md
```bash
./plainedit.sh 1
```

Markdown in Project Folder
```bash
./plainedit.sh "1/in.md" "1/out.md"
```

Config Path where the project folder exist
PlainEdit can be executed from another bash script with defined path, look at examples: [Examples - examples.plainedit.com](https://examples.plainedit.com/)

It works here
```bash
./plainedit --path "/media/tom/projects/plainedit/examples/1" "in.md" "out.md"
```
