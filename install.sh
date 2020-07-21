#!/bin/sh
to_home='wallpapers fonts icons face.icon'
dir=$(readlink -f $0)
dir=$(dirname "$dir")
rel=${dir#~/}

for i in $dir/$to_home
do 
	i=${i#$dir/}
	if [ -e ~/.$i ] || [ -L ~/.$i ]; then
		rm ~/.$i
	fi
	ln -f -s ${rel}/$i ~/.$i
done


# Put wallpapers to xdg pictures as well
picdir=$(xdg-user-dir PICTURES)
picback="${picdir#~/}"
picback="${picback//[^\/]}"
picback="${picback//\//..\/}"

if [ -e $picdir/wallpapers ] || [ -L $picdir/wallpapers ]; then
	rm $picdir/wallpapers
fi
ln -f -s ${picback}../$rel/wallpapers $picdir/wallpapers
