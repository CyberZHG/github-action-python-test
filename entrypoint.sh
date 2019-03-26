#!/usr/bin/env bash
args=$@
shopt -s nullglob
requirements=(requirement*.txt)
for requirement in "${requirements[@]}"
do
    command="pip install -r $requirement"
    echo ${command}
    ${command}
done
command="nosetests $args"
echo ${command}
${command}
