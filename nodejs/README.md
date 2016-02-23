NodeJS
======

[NodeJS](https://nodejs.org), a javaScript runtime.

Run as mounted folder's user : ```docker run -it --rm -v /path/to/folder:/src jeanberu/nodejs [CMD]```
Run as root : ```docker run -it --rm -v -e "USR=root" jeanberu/nodejs [CMD]```

