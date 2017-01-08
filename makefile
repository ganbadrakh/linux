## Use with gmake not with make!

SERVER_PATH:=/path/to/my/folder
SERVER:=my_server:$(SERVER_PATH)
SAS:=qbs -q s -o disksize=30G

.PHONY: all upload download main table1 clean

all: table1

upload:
	scp *.sas                 $(SERVER)

download:
	scp $(SERVER)/*.saserr    .
	scp $(SERVER)/*.saslog    .

main:
	$(SAS) main.sas
	
latex:
	latexmk -pdf -pdflatex='pdflatex -interaction=nonstopmode' -use-make table2.tex
	latexmk -c

table1:
	$(SAS) table1.sas

clean:
	rm -f *.saslog *.saserr
