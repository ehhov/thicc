#!/bin/sh
dir="$(readlink -f "$0")"
dir="$(dirname "$dir")"
rel="${dir#~/}"

action() {
	# remove $2
	# link to_what$1 where $2
	if [ -e "$2" ] || [ -h "$2" ]; then
		rm -rf "$2"
	fi
	if [ ! -e "$2" ] && [ ! -h "$2" ]; then
		ln -s "$1" "$2"
	fi
}


## From ./home/* to ~/.*
for i in "${dir}"/home/*; do
	i="${i#$dir/}"
	j="${i#home/}"
	action "${rel}/$i" ~/."$j"
done

## From ./fonts/* to ~/.local/share/fonts/*
mkdir -p ~/.local/share/fonts/
for i in "${dir}"/fonts/*; do
	i="${i#$dir/}"
	j="${i#fonts/}"
	action ../../../"${rel}/$i" ~/.local/share/fonts/"$j"
done

## From ./icons/* to ~/.local/share/icons/*
mkdir -p ~/.local/share/icons/
for i in "${dir}"/icons/*; do
	i="${i#$dir/}"
	j="${i#icons/}"
	action ../../../"${rel}/$i" ~/.local/share/icons/"$j"
done
