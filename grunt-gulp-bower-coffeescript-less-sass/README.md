GGBCLS : Grunt Gulp Bower Coffeescript Less Sass
================================================

GGBCLS for some NodeJS utils :

 * [Grunt](http://gruntjs.com/), the JavaScript Task Runner
 * [Gulp](http://gulpjs.com/), the streaming build system
 * [Bower](http://bower.io/), a package manager for the web
 * [CoffeeScript](http://coffeescript.org/), a little language that compiles into JavaScript
 * [Less](http://lesscss.org/), a CSS pre-processor
 * [Sass](http://sass-lang.com/), CSS with superpowers

Run as current user : ```docker run --rm -it -v /path/to/folder:/src jeanberu/ggbcls [grunt|gulp|bower|coffee|less|lessc|sass|sass-convert] [OPTIONS]```
Run as current root : ```docker run --rm -it -v /path/to/folder:/src -e "USR=root" jeanberu/ggbcls [grunt|gulp|bower|coffee|less|lessc|sass|sass-convert] [OPTIONS]```
