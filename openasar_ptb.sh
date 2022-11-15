#! /bin/bash

killall -9 Discord\ PTB
sleep 5

mv /Applications/Discord\ PTB.app/Contents/Resources/app.asar /Applications/Discord\ PTB.app/Contents/Resources/app.asar.bak
curl --silent -k -o app.asar -L "https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar" 

if [ -s app.asar ]; 
then
	mv app.asar /Applications/Discord\ PTB.app/Contents/Resources/app.asar
	rm /Applications/Discord\ PTB.app/Contents/Resources/app.asar.bak
	echo "Done! Open Discord to apply changes."
else
	mv /Applications/Discord\ PTB.app/Contents/Resources/app.asar.bak /Applications/Discord\ PTB.app/Contents/Resources/app.asar
	echo "An error occurred! Installation cannot proceed. Is this script outdated?"
fi
