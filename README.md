<h1 align="center">Jekyll on Docker</h1>
<div align="center">
    <i>All the goodness from Jekyll, zero gems hassle</i>
</div>
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

### Custom gems

If there's a `Gemfile` in the folder this binary is ran into, `bundle install` will be executed before anything else – effectively preparing the _ephemeral_ container with a very specific set of gems.

```bash
$ cd ~/my_project
$ echo "gem 'pygments.rb', '~> 0.6.3'" >> Gemfile
$ jekyll serve -w
Fetching gem metadata from https://rubygems.org/..............
Fetching pygments.rb 0.6.3
Installing pygments.rb 0.6.3
Bundle complete!
Bundled gems are installed into `/usr/local/bundle`
Configuration file: /opt/app/_config.yml
            Source: /opt/app
       Destination: /opt/app/_site
 Incremental build: disabled. Enable with --incremental
      Generating...
                    done in 2.762 seconds.
 Auto-regeneration: enabled for '/opt/app'
    Server address: http://0.0.0.0:4000
  Server running... press ctrl-c to stop.
```

## Author
Mario Álvarez <ahoy@m4grio.me>
