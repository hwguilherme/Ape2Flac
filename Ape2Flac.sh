#!/bin/bash	
cd "$1"
for arquivos in *.ape; do
	arquivo=`echo "${arquivos%.ape}"`
	`ffmpeg -i "$arquivos" "$arquivo.flac"`
done

