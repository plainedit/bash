



![logo](http://logo.plainedit.com/2/cover.png)

# [Sourcecode - bash.plainedit.com](http://bash.plainedit.com/)

+ [Offer - offer.plainedit.com](http://offer.plainedit.com/)
+ [Usecases - examples.plainedit.com](http://examples.plainedit.com/)
+ [Documentation - docs.plainedit.com](http://docs.plainedit.com/)
+ [Website - www.plainedit.com](http://www.plainedit.com/)
+ [News - blog.plainedit.com](http://blog.plainedit.com/)
+ [Offer - offer.plainedit.com](http://offer.plainedit.com/)
+ [logo.plainedit.com](https://logo.plainedit.com/)
+ [LICENSE](LICENSE)

---

> [here You can maintain the content for your website in Markdown files](https://github.com/plainedit/bash/edit/main/MENU.md)

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


## Start using PlainEdit

List of projects
```bash
./plainedit.sh
```

Run macro for 1/in.md
```bash
./plainedit.sh 1
```

INPUT and OUTPUT file
```bash
./plainedit.sh "in.md" "out.md"
```

Markdow in Project Folder
```bash
./plainedit.sh "1/in.md" "1/out.md"
```



---

> [here You can maintain the content for your website in Markdown files](https://github.com/plainedit/bash/edit/main/START.md)

---

## PROJECTS

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
```bash
./plainedit --path "/media/tom/projects/plainedit/examples/1" "in.md" "out.md"
```

Authorisation
```bash
./plainedit "1/in.md" "1/out.md" "1/auth.md"
```



---

> [here You can maintain the content for your website in Markdown files](https://github.com/plainedit/bash/edit/main/PROJECTS.md)

---
## FLAGS

### show only code
example with FLAGS
+ [IN ](1/in.md)
+ [OUT ](1/out.md)

### show only code at selected script
example with FLAGS
+ [IN ](2/in.md)
+ [OUT ](2/out.md)




---

> [here You can maintain the content for your website in Markdown files](https://github.com/plainedit/bash/edit/main/FLAGS.md)

---
## EXAMPLE

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

> [here You can maintain the content for your website in Markdown files](https://github.com/plainedit/bash/edit/main/EXAMPLE.md)

---

## DOCS

### markdown

[pod2text - Convert POD data to formatted ASCII text - Perldoc Browser](https://perldoc.perl.org/pod2text)

pod2text test_out.md

### Bash snippets generator:

+ [50 `sed` Command Examples](https://linuxhint.com/50_sed_command_examples/)
+ [Bash Split String Examples](https://linuxhint.com/bash_split_examples/)


---

> [here You can maintain the content for your website in Markdown files](https://github.com/plainedit/bash/edit/main/DOCS.md)

---

## ROADMAP

### INTERNAL COMMANDS

+ obsługa XPATH, ładowanie skrawka strony
  Xpath and markdown – how to interoperate
  [Parsing HTML with Xpath](https://scrapfly.io/blog/parsing-html-with-xpath/)

extract data from website:

    ```command
    xpath http://example.org/home.html //title
    ```

screenshot:

    ```command
    screenshot http://example.org/home.html 100px 200px
    ```

Dostęp do zewnętrznego API z autoryzacją

    ```api
    http://example.org/
    ```

Ładowanie plików na potrzeby projektu, np IMG z internetu, by je lokalnie załączyć jako base64

    ```download
    http://example.org/
    ```

Zamiana danych na base64

    ```encode_base64
    data to encode
    ```

    ```decode_base64
    data to decode
    ```

### SERVICE

Folder zawierające usługi, które trzeba zainstalować w przypadku, gdy nie istnieją w lokalnym lub zdalnym środowisku
Istnieje możliwość wykorzystania jednego z predefiniowanych środowisk, które zawierają potrzebne usługi

#### Docker
Budowanie dokera na podstawie konfiguracji
Build your Docker File using the following instructions:

    ```docker
    #This is a sample Image
    FROM ubuntu
    MAINTAINER demousr@gmail.com
    
    RUN apt-get update
    RUN apt-get install –y nginx
    CMD [“echo”,”Image created”]
    ```


    ```service
    docker run --rm -v /usr/local/bin:/target jpetazzo/nsenter
    ```

#### Apache Camel
Example of API prepared with kamel and groovy

    ```kamel_groovy
    def prop = "toString"
    from("rest:get:hello:/french/{me}")
      .transform().simple("Bonjour $prop")
      .to("log:message")
    ```

Move files between folders

    ```kamel_groovy
    from("file://home/tom/camel/in?fileName=temp.txt&fileExist=Append")
      .log(" --- Show FILE from PATH")
      .to("file://home/tom/camel/out")
      .to("log:message")
    ```    

### Operacje na CSV

tak jak w apimacro, generowanie wyników CSV na podsatwie danych wejściowych z CSV


### FLAGI + CONFIG

FLAGI służą do określenia zachowania plainedit przy przetwarzaniu skryptów

FlAGI ustawiane domyślne z pliku konfiguracyjnego o nazwie:

.plainedit.cfg

Przykładowe flagi przy skrypcie:

ukrywa input, pokazuje sam OUTPUT
renderuje do formatu

    ```bash HIDE HTML
    curl site.com
    ```

INPUT:
+ pokaż input, DEFAULT: [SHOW]
+ ukryj input, [HIDE]

OUTPUT:
+ pokaż output jako narzucony format mimetype, [JSON] [XML] [CSV]
  + pokaż output jako text, DEFAULT: [TEXT]
+ pokaż output jako wykryty mimetype, [PNG] [GIF] [HEX] [BASE64] [HTML]

### konfiguracja

ładowanie konfiguracji lokalnie i z zewnątrz
.plainedit.cfg
autoryzacja do usług: API, SSH, itd


### obsługa różnych mimietype:

+ obsługa CURL API
+ obsługa CURL HTML -> SCREENSHOT i załączenie PNG
+ obsługa CURL z kolorwaniem i formatami + auth


### Środowiska:

+ ENV per LANG: python env, npm
+ plik konfiguracyjny
+ wirtualne środowisko do uruchamiania skryptów, np docker
+ uruchamianie zdalnie poprzez SSH, dla kazdej komendy na oddzielnej maszynie
  + testy na dockerach
+ wysyłanie email z załącznikiem markdown po wygenerowaniu:
  + ./plainedit.sh "test.md" "test_out.md" "test@test.com"


### Marketplaces

pobieranie bibliotek w celu wykonania
+ Ładowanie z npm


### RUN REMOTE:
+ uruchamianie na zewnętrznej, zdalnej maszynie
+ pobieranie dodatkowych tresci ze zdalnych usług poprzez API,
  + np korekta kodu

## RUN with API

+ INPUT
+ OUTPUT request autokorekta z API

## Examin tests

student otrzymuje arkusz z zadaniami
wypelnia pola INPUT

Nauczyciel sprawdza zadania automatycznie po uruchomieniu

pattern > */
output > start validation


### Uruchamianie w środowisku lokalnym Docker

Lokalne srodowisko w przeglądarce:

1. lokalny client i serwer + lokalny shell
2. lokalny client i serwer + docker
3. lokalny client i serwer + ssh

### SAAS:

5. zdalny server + docker
6. zdalny server + docker + ssh

### Usługi:

+ plainedit.com/:user/:project/#markdown
+ deploy.plainedit.com/:language
+ render.plainedit.com/:mimetype/:input
+ screenshot.plainedit.com/:url/:mimetype


### proste requesty do uruchomienia zdalnie

komenda curl z adresem servera plainedit

uruchamia instancje
odpala
zakańcza proces w ciagu 30 sekund
kazda instancja jest przypisana do uzytkownika


user.plainedit.com/:user/:script
zapisywanie skytpu do pozniejszego uzycia
kolekcja skryptow i projektow online
zapisz zmien, supportowane przez git


### deploy z url github/gitlab

TYLKO PUBLICZNE
git.plainedit.com/:user
lista wyboru jaki projekt

generowanie wynikowego URL z wykonywanym markdownem

dla klientow VIP wykonywane za kazdym razem

dla klientow premium wykonywane co 1 minutę
+ 1/msc
  dla kont FREE kilka 1 raz na godzine
  + fundacje
  + szkoły


github.plainedit.com/:user/:
gitlab.plainedit.com/:user/:script



---

 > [here You can maintain the content for your website in Markdown files](https://github.com/plainedit/roadmap/edit/main/ROADMAP.md)

---
