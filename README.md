

![logo](http://logo.plainedit.com/2/cover.png)

# [Sourcecode - bash.plainedit.com](http://bash.plainedit.com/)


## [offer.plainedit.com](http://offer.plainedit.com/)

+ [Usecases - examples.plainedit.com](http://examples.plainedit.com/)
+ [Documentation - docs.plainedit.com](http://docs.plainedit.com/)
+ [Website - www.plainedit.com](http://www.plainedit.com/)
+ [News - blog.plainedit.com](http://blog.plainedit.com/)
+ [Offer - offer.plainedit.com](http://offer.plainedit.com/)
+ [logo.plainedit.com](https://logo.plainedit.com/)

---

[here You can maintain the content for your website in Markdown files](https://github.com/plainedit/bash/edit/main/MENU.md)

---
## About  PlainEdit 

PLAINEDIT takes markdown, evaluates code blocks with interpreters and prints the output of those processes to a different codeblock.
Plain editor written in Bash, it's a single bash scripts with modular architecture opened for an extension scripts.


### USAGE

+ can be repeated many times such report with sending as content or attachement in e+mail message
+ can help another dev/ops in team to make step by step daily tasks with projects


### BENEFITS

+ All the files are stored in a Git repository, each article is saved as a separated text file in Markdown syntax.
+ simply script easy to understand with basic functions
+ all examples are rendered through one run in shell
+ running code on remote server

It is so simple that it doesn't have any user management (KISS philosophy).

### Features

+ File-based using a Git repository
+ Content optionally generated statically
+ Markdown syntax


### Dependencies

+ Bash
+ Git
+ Markdown-to-HTML converter: pandas
+ Web server with CGI/JS-express support


### Supported languages:

+ sh/bash
+ php
+ js
+ java
+ groovy


### Supported environments:

+ Docker
+ kubernetes


### Supported API:

+ github
+ gitlab
+ cloudflare
+ digitalcloud



### MODE

+ show command from source and output from script
+ show only output from script as text,
  + json - html colorised
  + csv - table
+ show only output from script as such detected files:
  + image- jpg,png,gif
  + html website, e.g CURL command -> screenshoot image


## Use Cases:

### Community

+ Schools
+ Bootcamps


### Usage 

+ Tutorials with live code examples
+ Trainings offline / online with live coding
+ Documentation on sever side for DevOps, Fullstack Devs
+ Reports, import export settings from differents server at one moment, at one time
+ Portfolios with imported data from list of resources


---

> [here You can maintain the content for your website in Markdown files](https://github.com/plainedit/bash/edit/main/ABOUT.md)

---

## START PlainEdit Script

Input and output file with results:
```bash
./plainedit.sh "test.md" "test_out.md"
```

Markdow in Project Folder
```bash
./plainedit.sh "1/in.md" "1/out.md"
```

PlainEdit can be executed from another bash script with defined path
Look at examples: [Examples - examples.plainedit.com](https://examples.plainedit.com/)
```bash
./plainedit.sh --path "/media/tom/projects/plainedit/1" "in.md" "out.md"
```

## RESULT:

---

OUTPUT FILE:

---

## MKDIR

Create new Folder

```bash
mkdir TEST
```
EXECUTED bash:
```bash
mkdir: das Verzeichnis »TEST“ kann nicht angelegt werden: Die Datei existiert bereits
```

## PHP version

Check PHP version

```bash
php -version
```
EXECUTED bash:
```bash
PHP 8.0.8 (cli) (built: Mar  3 2022 14:51:53) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.8, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.8, Copyright (c), by Zend Technologies
```

## PHP script

Show global variable

```php
class Fruit {
    public $name;
  
    function __construct($name) {
      $this->name = $name;
    }
    function __toString() {
      return $this->name;
    }
}

$apple = new Fruit("Apple");
echo (string ) $apple;
```
EXECUTED php:
```php
Apple
```

---
 
[here You can maintain the content for your website in Markdown files](https://github.com/plainedit/bash/edit/main/START.md) 

---

## DOCS

### markdown

[pod2text - Convert POD data to formatted ASCII text - Perldoc Browser](https://perldoc.perl.org/pod2text)

pod2text test_out.md

### Bash snippets generator:

+ [50 `sed` Command Examples](https://linuxhint.com/50_sed_command_examples/)
+ [Bash Split String Examples](https://linuxhint.com/bash_split_examples/)


---

[here You can maintain the content for your website in Markdown files](https://github.com/plainedit/bash/edit/main/DOCS.md)

---
