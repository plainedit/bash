# [bash.plainedit.com](http://bash.plainedit.com/)



PLAINEDIT takes markdown, evaluates code blocks with interpreters and prints the output of those processes to a different codeblock.

## START

```bash
./plainedit "test.md" "test_out.md"
```

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

## DOCS

[pod2text - Convert POD data to formatted ASCII text - Perldoc Browser](https://perldoc.perl.org/pod2text)

pod2text test_out.md




## TODO:

+ czy string zawiera jakikolwiek skrypt z listy:
  + bash
  + sh
  + php
  + js
  + java
  + 

xpath

[Parsing HTML with Xpath](https://scrapfly.io/blog/parsing-html-with-xpath/)

Xpath and markdown – how to interoperate