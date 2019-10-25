#!/bin/bash

for i in $(ls -1 *.png); do
	page_file=$i
	bn=$(basename $page_file .png)
	tesseract --dpi 150 -l spa $page_file $bn
done
