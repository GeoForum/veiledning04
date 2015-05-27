exts="png PNG jpg JPG jpeg JPEG bmp BMP"
#for ext in png PNG jpg JPG jpeg JPEG bmp BMP; do
for ext in $exts; do
  #echo "*.$ext";
  rm *.$ext 2>/dev/null
done
cp ../src/* ./
#for ext in png PNG jpg JPG jpeg JPEG bmp BMP;
for ext in $exts; do
  #echo "*.\$ext *.$ext";
  for i in *.$ext; do
    #echo "i $i";
    if [ -f $i ];
     then #mogrify -resize "700x700>" "$i"; 
          #echo "700_$i"; echo "350_$i";
          convert -resize "700x700>" "$i" "700_$i"; 
          convert -resize "350x350>" "$i" "350_$i"; 
    fi;
  done
done