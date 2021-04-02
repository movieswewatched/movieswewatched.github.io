#!/bin/bash

arr=()
while IFS= read -r line; do
   arr+=("$line")
done <./movies.txt

IFS=$'\n' sorted=($(sort <<<"${arr[*]}"))
unset IFS


printf "%s\n" "${sorted[@]}" > sorted_movies.txt

echo ${sorted[@]}
