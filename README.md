# UW ttyp0
[UW ttyp0](https://people.mpi-inf.mpg.de/~uwe/misc/uw-ttyp0/) is 
configured with
 - TARGETS: only uni, all sizes
 - Slashed digit 0
 - Raised asterisk
 - Centered tilde
 - Normal space for no-break space

# Iosevka
If you will ever need to rebuild the 
[Iosevka](https://typeof.net/Iosevka/) font, don't forget the following:
``` 
design = ["sp-fixed", "leading-1250", 
	"v-brace-straight", "v-numbersign-slanted", "v-percent-dots", 
	"v-nine-turned-six", "v-capital-g-toothless"]
```
You will also need to install `npm`, `ttfautohint`, `otfcc`, and `afdko 
(python)`.

# Fonts You can find a lot of fonts in 
[github.com/potyt/fonts](https://github.com/potyt/fonts)

# Profile picture
KDE looks for a profile picture in `~/.face`, `~/.face.icon`. 
Sddm lower priority but always enabled faces directory is
`/usr/share/sddm/faces/`, file names should be
`username.face.icon`. Another place for them is
`/var/lib/AccountsService/`, I don't know why. 

To define a faces directory manually, include the following to the 
`/etc/sddm.conf.d/` file
```
[Theme]
FacesDir=/path
```

# SDDM theme
For each directory in `sddm/`, copy it to `/usr/share/sddm/themes/`. 
