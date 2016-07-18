#!/usr/bin/env bash

# Functions I use with alias in the .bashrc file:
creacpp() {
	cp "/home/josemi/Templates/Código fuente cpp.cpp" $1.cpp
}

creahpp() {
	cp "/home/josemi/Templates/Cabecera hpp.hpp" $1.hpp
}

compilacpp() {
	g++ $1 $2 $3 $4 $5 -Wall -o $1.bin
}

compilagdb(){
	compilacpp $1 $2 $3 $4 -g
	gdb $1.bin
}

# Alias in my .bashrc file:
alias cd..='cd ..'
alias gocpp='cd ~/CPP'
alias rmbin='rm *.bin'
alias mkcpp=creacpp
alias mkhpp=creahpp
alias compila=compilacpp