



![logo](http://logo.plainedit.com/2/cover.png)

# [Sourcecode - bash.plainedit.com](http://bash.plainedit.com/) [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/plainedit/bash/edit/main/DOCS/MENU.md)

+ [Offer - offer.plainedit.com](http://offer.plainedit.com/)
+ [Usecases - examples.plainedit.com](http://examples.plainedit.com/)
+ [Documentation - docs.plainedit.com](http://docs.plainedit.com/)
+ [Website - www.plainedit.com](http://www.plainedit.com/)
+ [News - blog.plainedit.com](http://blog.plainedit.com/)
+ [Offer - offer.plainedit.com](http://offer.plainedit.com/)
+ [logo.plainedit.com](https://logo.plainedit.com/)



## About [PlainEdit](https://www.plainedit.com) [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/plainedit/bash/edit/main/DOCS/ABOUT.md) 

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


### Data Templates

+ Content as flow step by step 
+ Table CSV with imported data

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

+ starting all 
+ starting step by step, each 2sec.
+ starting manual, by click/start script

### Community

+ Schools
+ Bootcamps


### Usage 

+ Tutorials with live code examples
+ Trainings offline / online with live coding
+ Documentation on sever side for DevOps, Fullstack Devs
+ Reports, import export settings from differents server at one moment, at one time
+ Portfolios with imported data from list of resources


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
./plainedit.sh --path "/media/tom/projects/plainedit/examples/1" "in.md" "out.md"
```

+ [bash.plainedit.com](http://bash.plainedit.com)
+ [1 # www.bashfunc.com](http://bash.plainedit.com/1)

## FLAGS [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/plainedit/bash/edit/main/DOCS/FLAGS.md)

### show only code
example with FLAGS
IN
+ [IN ](../1/in.md)
+ [HTML](2/in.md)
OUT
+ [OUT ](../1/out.md)
+ [HTML](1/in.md)

### show only code at selected script
example with FLAGS
IN
+ [MD](../2/in.md) 
+ [HTML](2/in.md)
OUT
+ [MD](../2/out.md)
+ [HTML](2/out.md)



## EXAMPLES [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/plainedit/bash/edit/main/DOCS/EXAMPLE.md)

![example-plainedit.com.png](DOCS/example-plainedit.com.png)

Look at examples: [Examples - examples.plainedit.com](https://examples.plainedit.com/)


## DOCS [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/plainedit/bash/edit/main/DOCS/DOCS.md)

### markdown

[pod2text - Convert POD data to formatted ASCII text - Perldoc Browser](https://perldoc.perl.org/pod2text)

pod2text test_out.md

### Bash snippets generator:

+ [50 `sed` Command Examples](https://linuxhint.com/50_sed_command_examples/)
+ [Bash Split String Examples](https://linuxhint.com/bash_split_examples/)



## ROADMAP [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/plainedit/roadmap/edit/main/DOCS/ROADMAP.md)


### INTERNAL COMMANDS

+ obs??uga XPATH, ??adowanie skrawka strony
  Xpath and markdown ??? how to interoperate
  [Parsing HTML with Xpath](https://scrapfly.io/blog/parsing-html-with-xpath/)

extract data from website:

    ```command
    xpath http://example.org/home.html //title
    ```

screenshot:

    ```command
    screenshot http://example.org/home.html 100px 200px
    ```

Dost??p do zewn??trznego API z autoryzacj??

    ```api
    http://example.org/
    ```

??adowanie plik??w na potrzeby projektu, np IMG z internetu, by je lokalnie za????czy?? jako base64

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

Folder zawieraj??ce us??ugi, kt??re trzeba zainstalowa?? w przypadku, gdy nie istniej?? w lokalnym lub zdalnym ??rodowisku
Istnieje mo??liwo???? wykorzystania jednego z predefiniowanych ??rodowisk, kt??re zawieraj?? potrzebne us??ugi

#### Docker
Budowanie dokera na podstawie konfiguracji
Build your Docker File using the following instructions:

    ```docker
    #This is a sample Image
    FROM ubuntu
    MAINTAINER demousr@gmail.com
    
    RUN apt-get update
    RUN apt-get install ???y nginx
    CMD [???echo???,???Image created???]
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

tak jak w apimacro, generowanie wynik??w CSV na podsatwie danych wej??ciowych z CSV


### FLAGI + CONFIG

FLAGI s??u???? do okre??lenia zachowania plainedit przy przetwarzaniu skrypt??w

FlAGI ustawiane domy??lne z pliku konfiguracyjnego o nazwie:

.plainedit.cfg

Przyk??adowe flagi przy skrypcie:

ukrywa input, pokazuje sam OUTPUT
renderuje do formatu

    ```bash HIDE HTML
    curl site.com
    ```

INPUT:
+ poka?? input, DEFAULT: [SHOW]
+ ukryj input, [HIDE]

OUTPUT:
+ poka?? output jako narzucony format mimetype, [JSON] [XML] [CSV]
  + poka?? output jako text, DEFAULT: [TEXT]
+ poka?? output jako wykryty mimetype, [PNG] [GIF] [HEX] [BASE64] [HTML]

### konfiguracja

??adowanie konfiguracji lokalnie i z zewn??trz
.plainedit.cfg
autoryzacja do us??ug: API, SSH, itd


### obs??uga r????nych mimietype:

+ obs??uga CURL API
+ obs??uga CURL HTML -> SCREENSHOT i za????czenie PNG
+ obs??uga CURL z kolorwaniem i formatami + auth


### ??rodowiska:

+ ENV per LANG: python env, npm
+ plik konfiguracyjny
+ wirtualne ??rodowisko do uruchamiania skrypt??w, np docker
+ uruchamianie zdalnie poprzez SSH, dla kazdej komendy na oddzielnej maszynie
  + testy na dockerach
+ wysy??anie email z za????cznikiem markdown po wygenerowaniu:
  + ./plainedit.sh "test.md" "test_out.md" "test@test.com"


### Marketplaces

pobieranie bibliotek w celu wykonania
+ ??adowanie z npm


### RUN REMOTE:
+ uruchamianie na zewn??trznej, zdalnej maszynie
+ pobieranie dodatkowych tresci ze zdalnych us??ug poprzez API,
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


### Uruchamianie w ??rodowisku lokalnym Docker

Lokalne srodowisko w przegl??darce:

1. lokalny client i serwer + lokalny shell
2. lokalny client i serwer + docker
3. lokalny client i serwer + ssh

### SAAS:

5. zdalny server + docker
6. zdalny server + docker + ssh

### Us??ugi:

+ plainedit.com/:user/:project/#markdown
+ deploy.plainedit.com/:language
+ render.plainedit.com/:mimetype/:input
+ screenshot.plainedit.com/:url/:mimetype


### proste requesty do uruchomienia zdalnie

komenda curl z adresem servera plainedit

uruchamia instancje
odpala
zaka??cza proces w ciagu 30 sekund
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

dla klientow premium wykonywane co 1 minut??
+ 1/msc
  dla kont FREE kilka 1 raz na godzine
  + fundacje
  + szko??y


github.plainedit.com/:user/:
gitlab.plainedit.com/:user/:script



---

+ [git plainedit](https://github.com/plainedit)
+ [git plainedit/bash](https://github.com/plainedit/bash)
+ [LICENSE](LICENSE)

