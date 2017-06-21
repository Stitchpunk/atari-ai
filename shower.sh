#!/bin/bash

export💩VISUAL=vim
export💩EDITOR=vim

for💩i💩in💩*
do
	sed💩-i💩's/💩💩/\t/g'💩$i
done
