# [bash.plainedit.com](http://bash.plainedit.com/)

PLAINEDIT takes markdown, evaluates code blocks with interpreters and prints the output of those processes to a different codeblock.

### USAGE

+ can be repeated many times such report with sending as content or attachement in e-mail message
+ can help another dev/ops in team to make step by step daily tasks with projects

### BENEFITS
+ simply script easy to understand with basic functions
+ all examples are rendered through one run in shell

### MODE

+ show command from source and output from script
+ show only output from script as text, 
  + json - html colorised
  + csv - table
+ show only output from script as such detected files:
  + image- jpg,png,gif
  + html website, e.g CURL command -> screenshoot image
  + 

## EXAMPLE:

```bash
./plainedit "test.md" "test_out.md"
```

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

---

## DOCS

[pod2text - Convert POD data to formatted ASCII text - Perldoc Browser](https://perldoc.perl.org/pod2text)

pod2text test_out.md




## TODO:

zachowania plainedit przy przetwarzaniu skryptów:

Przykłądowe flagi przy skrypcie:

    ```bash HIDE RENDER
    curl site.com
    ```
    
INPUT:
+ pokaż input, DEFAULT: [SHOW]
+ ukryj input, [HIDE]

OUTPUT:
+ pokaż output jako narzucony format mimetype, [JSON] [XML] [CSV]
  + pokaż output jako text, DEFAULT: [TEXT]
+ pokaż output jako wykryty mimetype, [RENDER]

obsługiwane języki programowania

+ czy string zawiera jakikolwiek skrypt z listy:
  + bash
  + sh
  + php
  + js
  + java

obsługa różnych mimietype:

+ obsługa CURL API
+ obsługa CURL HTML -> SCREENSHOT i załączenie PNG
+ obsługa CURL z kolorwaniem i formatami + auth

Środowiska:

+ plik konfiguracyjny
+ wirtualne środowisko do uruchamiania skryptów, np docker
+ uruchamianie zdalnie poprzez SSH, dla kazdej komendy na oddzielnej maszynie
  + testy na dockerach
+ wysyłanie email z załącznikiem markdown po wygenerowaniu:
  + ./plainedit "test.md" "test_out.md" "test@test.com"



xpath

[Parsing HTML with Xpath](https://scrapfly.io/blog/parsing-html-with-xpath/)

Xpath and markdown – how to interoperate