#!/bin/sh

BLANK='#1B1D24'
CLEAR='#272A34'
DEFAULT='#888A8D'
TEXT='#FFFFFF'
WRONG='#3267C1'
VERIFYING='#3267C1'
OUTLINE='#1B1D24'
NONE='#00000000'

betterlockscreen -l -- \
	--insidever-color=$NONE \
	--ringver-color=$VERIFYING \
	\
	--insidewrong-color=$CLEAR \
	--ringwrong-color=$WRONG \
	\
	--inside-color=$NONE \
	--ring-color=$DEFAULT \
	--line-color=$NONE \
	--separator-color=$NONE \
	\
	--verif-color=$TEXT \
	--wrong-color=$TEXT \
	--keyhl-color=$VERIFYING \
	--bshl-color=$VERIFYING \
	\
