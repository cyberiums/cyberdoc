#!/bin/sh

urls=(
  "http://www.cyberium.info"
  "https://www.cyberium.info"
  "http://www.cyberium.info/"
  "https://www.cyberium.info/"
  "http://www.cyberium.info/install"
  "https://www.cyberium.info/install"
  "http://www.cyberium.info/install/"
  "https://www.cyberium.info/install/"
  "http://ethereum.github.io/cyberium" 
  "https://ethereum.github.io/cyberium" 
  "http://ethereum.github.io/cyberium/" 
  "https://ethereum.github.io/cyberium/" 
  "http://ethereum.github.io/cyberium/install" 
  "https://ethereum.github.io/cyberium/install" 
  "http://ethereum.github.io/cyberium/install/" 
  "https://ethereum.github.io/cyberium/install/" 
)
for u in "${urls[@]}"
do
	echo "$u -> $(curl $u -w --silent -I 2>&1 | grep Location)"
done
