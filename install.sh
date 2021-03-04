#!/bin/bash

og=$(pwd)
cd
hom=$(pwd); user=${hom:6}
cd $og;
touch files/username
touch files/pdfviewer
touch files/path
touch files/login
echo $user > files/username
#sed -i "38s/.*/\	const\ string\ szHome\ =\ ${1};/" src/uva-tool.cpp
g++ -g -Wall -Wextra -Wshadow -Wfloat-equal -pedantic -std=c++11 -O2 -Wformat=2 -Wconversion -lm -o uva-tool/uva-tool uva-tool/src/uva-tool.cpp
mkdir ~/.cache/uva-tool/
sudo mkdir /usr/share/uva-tool/
sudo cp uva-tool/pid-to-num.cvs /usr/share/uva-tool/
touch uva
echo "#!/bin/sh" >> uva
echo "[ \$1 == "-s" ] && og=\$(pwd) && file="\${og}/\${2##*/}" &&" >> uva
echo "cd $og && ./uva-tools -s \$file && exit 0" >> uva
echo "cd $og && ./uva-tools \$@" >> uva
chmod +x uva-pdf
chmod +x uva-tools
chmod +x uva
sudo mv uva /usr/local/bin/

