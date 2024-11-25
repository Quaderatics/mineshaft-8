#!/bin/zsh

# Data pack
rm -rf ~/Library/Application\ Support/minecraft/saves/Mineshaft\ 8/datapacks/Mineshaft\ 8.zip
cd ./Mineshaft\ 8
zip -r 'Mineshaft 8' . -x '__MACOSX' -x '.DS_Store' -x '**/.DS_Store'
mv ./Mineshaft\ 8.zip ~/Library/Application\ Support/minecraft/saves/Mineshaft\ 8/datapacks
cd ..

# Resource pack
rm -rf ~/Library/Application\ Support/minecraft/saves/Mineshaft\ 8/resources.zip
cd ./resources
zip -r resources . -x '__MACOSX' -x '.DS_Store' -x '**/.DS_Store'
mv ./resources.zip ~/Library/Application\ Support/minecraft/saves/Mineshaft\ 8
