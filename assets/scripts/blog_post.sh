#!/data/data/com.termux/files/usr/bin/bash
# buat start blog post template di jakyl
#

TGL=`date '+%Y-%m-%d'`
JDL='Tanpa Judul'
JDL_F='Tanpa-Judul'
KAT='Bebas'

if [[ "$1" != '' ]] 
then
	JDL=`echo $1`
	#replace space jadi -dulu
	JDL_F=`echo $JDL |sed -e "s/ /-/g"`
fi

if [[ "$2" != '' ]] 
then
	KAT=`echo $2`
fi



POST_DATE=`date '+%Y-%m-%d %H:%M:%S'`
POST_PATH="$HOME/sdcard/tonshans.github.io/_posts"

FNAME="$POST_PATH/$TGL-$JDL_F.markdown"

if [[ ! -f $FNAME ]]; then
	echo "---" >> "$FNAME"
	echo "layout: post" >> "$FNAME"
	echo "title:  \"$JDL\"" >> "$FNAME"
	echo "date:  $POST_DATE +0800" >> "$FNAME"
	echo "categories: $KAT" >> "$FNAME"
	echo "---" >> "$FNAME"
	echo '' >> "$FNAME"

fi

vim "$FNAME"

