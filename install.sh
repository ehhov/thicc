to_home='wallpapers fonts icons'
this=$(pwd)
this=${this#~/}

for i in $to_home
do 
	if [ -e $i ]; then 
		[ -L ~/.$i ] && rm ~/.$i
		ln -f -s ${this}/$i ~/.$i
	fi
done
