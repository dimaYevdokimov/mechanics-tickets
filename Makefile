#!/bin/bash

pdf:
	mkdir ./pdf
	mkdir ./log
	mkdir ./aux
	sed -i 's/{{PAPER_SIZE}}/a4/g' ./src/*.tex > /dev/null
	sed -i 's/{{TOP_MARGIN}}/1.6/g' ./src/*.tex > /dev/null
	sed -i 's/{{BOTTOM_MARGIN}}/1.6/g' ./src/*.tex > /dev/null
	sed -i 's/{{LEFT_MARGIN}}/1.6/g' ./src/*.tex > /dev/null
	sed -i 's/{{RIGHT_MARGIN}}/1.6/g' ./src/*.tex > /dev/null
	sed -i 's/{{PDF_COMPRESS_LEVEL}}/9/g' ./src/*.tex > /dev/null
	sed -i 's/{{PAGE_COLOR}}/FFFFFF/g' ./src/*.tex > /dev/null
	sed -i 's/{{TEXT_COLOR}}/000000/g' ./src/*.tex > /dev/null
	pdflatex -output-directory="./pdf/" ./src/*.tex
	mv ./pdf/*.log ./log/
	mv ./pdf/*.aux ./aux/

dvi:
	mkdir ./dvi
	mkdir ./log
	mkdir ./aux
	sed -i 's/{{PAPER_SIZE}}/a4/g' ./src/*.tex > /dev/null
	sed -i 's/{{TOP_MARGIN}}/1.6/g' ./src/*.tex > /dev/null
	sed -i 's/{{BOTTOM_MARGIN}}/1.6/g' ./src/*.tex > /dev/null
	sed -i 's/{{LEFT_MARGIN}}/1.6/g' ./src/*.tex > /dev/null
	sed -i 's/{{RIGHT_MARGIN}}/1.6/g' ./src/*.tex > /dev/null
	sed -i 's/{{PDF_COMPRESS_LEVEL}}/9/g' ./src/*.tex > /dev/null
	sed -i 's/{{PAGE_COLOR}}/FFFFFF/g' ./src/*.tex > /dev/null
	sed -i 's/{{TEXT_COLOR}}/000000/g' ./src/*.tex > /dev/null
	pdflatex -output-format="dvi" -output-directory="./dvi/" ./src/*.tex
	mv ./dvi/*.log ./log/
	mv ./dvi/*.aux ./aux/
	
pdf-backup:
	mkdir ./pdf-backup-temp
	cp ./pdf/* ./pdf-backup-temp/
	tar -cvf ./pdf-backup.tar ./pdf-backup-temp/*
	gzip ./pdf-backup.tar
	rm ./pdf-backup-temp -rf
	
dvi-backup:
	mkdir ./dvi-backup-temp
	cp ./dvi/* ./dvi-backup-temp/
	tar -cvf ./dvi-backup.tar ./dvi-backup-temp/*
	gzip ./dvi-backup.tar
	rm ./dvi-backup-temp -rf
	
clean:
	rm "./pdf/" -rf
	rm "./log/" -rf
	rm "./aux/" -rf
	rm "./dvi/" -rf		
	rm "./src/*" -rf
	rm ./backup-temp -rf
	cp ./tmp/*.tex ./src/
	rm ./pdf-backup-temp -rf
	rm ./dvi-backup-temp -rf
	
A3:
	sed -i 's/{{PAPER_SIZE}}/a3/g' ./src/*.tex > /dev/null
	
A4:
	sed -i 's/{{PAPER_SIZE}}/a4/g' ./src/*.tex > /dev/null

A5:
	sed -i 's/{{PAPER_SIZE}}/a5/g' ./src/*.tex > /dev/null

A6:
	sed -i 's/{{PAPER_SIZE}}/a6/g' ./src/*.tex > /dev/null
	
margin-tiny:
	sed -i 's/{{TOP_MARGIN}}/0.4/g' ./src/*.tex > /dev/null
	sed -i 's/{{BOTTOM_MARGIN}}/0.4/g' ./src/*.tex > /dev/null
	sed -i 's/{{LEFT_MARGIN}}/0.4/g' ./src/*.tex > /dev/null
	sed -i 's/{{RIGHT_MARGIN}}/0.4/g' ./src/*.tex > /dev/null
	
margin-small:
	sed -i 's/{{TOP_MARGIN}}/0.8/g' ./src/*.tex > /dev/null
	sed -i 's/{{BOTTOM_MARGIN}}/0.8/g' ./src/*.tex > /dev/null
	sed -i 's/{{LEFT_MARGIN}}/0.8/g' ./src/*.tex > /dev/null
	sed -i 's/{{RIGHT_MARGIN}}/0.8/g' ./src/*.tex > /dev/null

margin-medium:
	sed -i 's/{{TOP_MARGIN}}/1.6/g' ./src/*.tex > /dev/null
	sed -i 's/{{BOTTOM_MARGIN}}/1.6/g' ./src/*.tex > /dev/null
	sed -i 's/{{LEFT_MARGIN}}/1.6/g' ./src/*.tex > /dev/null
	sed -i 's/{{RIGHT_MARGIN}}/1.6/g' ./src/*.tex > /dev/null

margin-big:
	sed -i 's/{{TOP_MARGIN}}/3.2/g' ./src/*.tex > /dev/null
	sed -i 's/{{BOTTOM_MARGIN}}/3.2/g' ./src/*.tex > /dev/null
	sed -i 's/{{LEFT_MARGIN}}/3.2/g' ./src/*.tex > /dev/null
	sed -i 's/{{RIGHT_MARGIN}}/3.2/g' ./src/*.tex > /dev/null
	
pdf-compress-high:
	sed -i 's/{{PDF_COMPRESS_LEVEL}}/9/g' ./src/*.tex > /dev/null
	
pdf-compress-medium:
	sed -i 's/{{PDF_COMPRESS_LEVEL}}/6/g' ./src/*.tex > /dev/null
	
pdf-compress-low:
	sed -i 's/{{PDF_COMPRESS_LEVEL}}/3/g' ./src/*.tex > /dev/null
	
pdf-nocompress:
	sed -i 's/{{PDF_COMPRESS_LEVEL}}/0/g' ./src/*.tex > /dev/null

screen:
	sed -i 's/{{PAGE_COLOR}}/F0E8D1/g' ./src/*.tex > /dev/null
	sed -i 's/{{TEXT_COLOR}}/3E2917/g' ./src/*.tex > /dev/null
	
e-ink:
	sed -i 's/{{PAGE_COLOR}}/EEEEEE/g' ./src/*.tex > /dev/null
	sed -i 's/{{TEXT_COLOR}}/444444/g' ./src/*.tex > /dev/null