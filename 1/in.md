# www.bashfunc.com

## MKDIR

Create new Folder

```bash
mkdir TEST
```

## PHP version

Check PHP version

```bash
php -version
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

## PING

Show your folders

```
ping -q -c 1 softreck.com ; echo $?
```



## STOP
