#!/bin/sh

urls=(
  "http://geth.ethereum.org"
  "https://geth.ethereum.org"
  "http://geth.ethereum.org/"
  "https://geth.ethereum.org/"
  "http://geth.ethereum.org/install"
  "https://geth.ethereum.org/install"
  "http://geth.ethereum.org/install/"
  "https://geth.ethereum.org/install/"
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
