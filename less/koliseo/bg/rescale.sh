#!/bin/bash
# Reescala el contenido de esta carpeta a los tamaños que serán usados por la web

# -s es para moviles portrait: escala a (maximo) 800 vertical y hace crop a 400 horiz
for i in *[^-]?.jpg; do 
  convert $i -resize 'x800>' -gravity center -crop '400x+0+0'  `echo $i | sed s/\.jpg//`-s.jpg
done

# -m es para moviles landscape y tablets portrait: a (minimo) 800 vertical y hace crop a 800 horiz
for i in *[^-]?.jpg; do 
  convert $i -resize 'x800<' -gravity center -crop '800x+0+0'  `echo $i | sed s/\.jpg//`-m.jpg
done
