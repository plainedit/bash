
## PROJECTS [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/plainedit/bash/edit/main/DOCS/PROJECTS.md)

Working with projects structure folder

files structure
```
1
    in.md
    out.md
2
    in.md
    out.md
```

The same, with folders
```bash
./plainedit "1/in.md" "1/out.md" 
```

Config Path where the project folder exist
PlainEdit can be executed from another bash script with defined path, lLook at examples: [Examples - examples.plainedit.com](https://examples.plainedit.com/)
```bash
./plainedit --path "/media/tom/projects/plainedit/examples/1" "in.md" "out.md"
```

Authorisation
```bash
./plainedit "1/in.md" "1/out.md" "1/auth.md"
```

