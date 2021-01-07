#!/bin/bash

i=1
cd $1
for img in *.jpg
do
    mv $img $i.jpg
    let i++
done
for img in *.png
do
    mv $img $i.png
    let i++
done

