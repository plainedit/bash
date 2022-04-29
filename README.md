![logo](http://logo.plainedit.com/2/cover.png)

# [Sourcecode - bash.plainedit.com](http://bash.plainedit.com/)

PLAINEDIT takes markdown, evaluates code blocks with interpreters and prints the output of those processes to a different codeblock.


## MENU

+ [Usecases - examples.plainedit.com](http://examples.plainedit.com/)
+ [Documentation - docs.plainedit.com](http://docs.plainedit.com/)
+ [Website - www.plainedit.com](http://www.plainedit.com/)
+ [News - blog.plainedit.com](http://blog.plainedit.com/)
+ [Offer - offer.plainedit.com](http://offer.plainedit.com/)
+ [logo.apimacro.com](https://logo.apimacro.com/)

## About  PlainEdit 

### USAGE

+ can be repeated many times such report with sending as content or attachement in e-mail message
+ can help another dev/ops in team to make step by step daily tasks with projects

### BENEFITS

+ simply script easy to understand with basic functions
+ all examples are rendered through one run in shell
+ running code on remote server 

### MODE

+ show command from source and output from script
+ show only output from script as text, 
  + json - html colorised
  + csv - table
+ show only output from script as such detected files:
  + image- jpg,png,gif
  + html website, e.g CURL command -> screenshoot image


## EXAMPLE:
Input and output file
```bash
./plainedit.sh "test.md" "test_out.md"
```

Folder with projects
```bash
./plainedit.sh "1/in.md" "1/out.md"
```

PlainEdit can be executed from another bash script with defined path
```bash
./plainedit.sh --path "/media/tom/projects/plainedit/1" "in.md" "out.md"
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

### RUN REMOTE:

+ uruchamianie na zewnętrznej, zdalnej maszynie
+ pobieranie dodatkowych tresci ze zdalnych usług poprzez API,
  + np korekta kodu

INPUT 
OUTPUT autokorekta z API

student otrzymuje arkusz z zadaniami
wypelnia pola INPUT

Nauczyciel sprawdza zadania automatycznie po uruchomieniu

pattern > */
output > start validation

+ repo do examples z przykładem ładowania

### COMMAND
+ obsługa XPATH, ładowanie skrawka strony

[Parsing HTML with Xpath](https://scrapfly.io/blog/parsing-html-with-xpath/)

Xpath and markdown – how to interoperate


zachowania plainedit przy przetwarzaniu skryptów:


### FLAGI + CONFIG

FlAGI ustawiane domyślne z pliku konfiguracyjnego o nazwie: 

.plainedit.cfg


Przykładowe flagi przy skrypcie:

    ```bash HIDE RENDER
    curl site.com
    ```
    
INPUT:
+ pokaż input, DEFAULT: [SHOW]
+ ukryj input, [HIDE]

OUTPUT:
+ pokaż output jako narzucony format mimetype, [JSON] [XML] [CSV]
  + pokaż output jako text, DEFAULT: [TEXT]
+ pokaż output jako wykryty mimetype, [PNG] [GIF] [HEX] [BASE64] [HTML]


### obsługiwane języki programowania

+ czy string zawiera jakikolwiek skrypt z listy:
  + bash
  + sh
  + php
  + js
  + java


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


### Lokalne srodowisko w przeglądarce:

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


## proste requesty do uruchomienia zdalnie

komenda curl z adresem servera plainedit

uruchamia instancje
odpala
zakańcza proces w ciagu 30 sekund
kazda instancja jest przypisana do uzytkownika


user.plainedit.com/:user/:script
zapisywanie skytpu do pozniejszego uzycia
kolekcja skryptow i projektow online 
zapisz zmien, supportowane przez git


## deploy z url github/gitlab

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


