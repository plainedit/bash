#!/bin/bash
./xpath URL XPATH
./xpath "http://www..com" "//title"

INPUT: xpath
CURL download page,
put to the cache
OUTPUT: HTML OR CONVERT to MD

EXAMPLE:

```command
xpath "http://www.softreck.com" "//title"
```




## CSV IN

"URL","XPATH","//title"
"http://www.softreck.com"
"http://softreck.com"
"https://softreck.com"


## BASH
./xpath URL XPATH

./xpath "http://www.softreck.com" "//title"


## CSV OUT

"URL","XPATH","//title"
"http://www.softreck.com"," Strona ...."
"http://softreck.com"," Strona ...."
"https://softreck.com"," Strona ...."
