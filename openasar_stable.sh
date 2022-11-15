#! /bin/bash

killall -9 Discord
sleep 5

cp /Applications/Discord.app/Contents/Resources/app.asar /Applications/Discord.app/Contents/Resources/app.asar.bak
curl --silent -k -o app.asar -L "https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar"

if [ -s app.asar ];
then
	mv app.asar /Applications/Discord.app/Contents/Resources/app.asar
	echo "Done! Open Discord to apply changes."
else
	echo "An error occurred! Installation cannot proceed. Is this script outdated?"
fi
