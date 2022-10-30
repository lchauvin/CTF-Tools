#!/bin/bash

while getopts n: flag
do
    case "${flag}" in
        n) name=${OPTARG};;
    esac
done

if [ -z ${name+x} ]; then
	echo "Enter a name for the CTF Challenge (-n)"
	exit
fi

dir_name="${name// /_}"

mkdir ${dir_name}
cd ${dir_name}
touch README.md

date_string=$(date '+%B %d, %Y')

printf "# ${name}\n\nLaurent Chauvin | ${date_string}\n\n## Resources\n\n## Progress\n\n\`\`\`\n\`\`\`\n\n## Flag\n\n" >> README.md
