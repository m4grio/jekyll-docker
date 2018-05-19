<h1 align="center">Jekyll on Docker</h1>
<br>

## Requirements

* Docker

## Installation

Use `make`:
```
usage: make install
       make uninstall
```

| Make target | Description | Example |
|-|-|-|
| `make install` | Build the image and install the binary | <pre>$ make install<br>docker-compose build<br>Building jekyll<br>Step 1/8 : FROM ruby:alpine3.7<br>...<br>Successfully built<br>Successfully tagged astillero_jekyll:latest<br>install -m 0755 bin/jekyll /usr/local/bin/jekyll<br>$</pre> |

## Usage

```bash
$ jekyll --version
jekyll 3.8.1
$
```

## Author
Mario Álvarez <ahoy@m4grio.me>
