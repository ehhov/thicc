ln_to_home='wallpapers fonts icons'
D=`pwd`

for i in $ln_to_home
do 
	[ -e $D/$i ] && { [ -e ~/.$i ] && rm ~/.$i; ln -s $D/$i ~/.$i; }
done

