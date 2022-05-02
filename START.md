

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
