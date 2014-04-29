vim-spd syntax highlighting
===========================

Provides syntax highlighting for spd files (see http://spd.sourceforge.net/).

Installation
------------
Copy the "syntax" folder to your ~/.vim directory.

Usage
-----
To use either set the syntax manually when editing a spd file:

```
:set syntax=spd
```

or add the following to ~/.vim/scripts.vim:

```
if did_filetype()
    finish
endif
if getline(1) =~# '^host    username        password        description     product$'
    setfiletype spd
endif
```
