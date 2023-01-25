.PHONY: all static shared

all:
	fbc -w all -lib -i include src/spinner.bas
	fbc -w all -dll -i include src/spinner.bas

static:
	fbc -w all -lib -i include src/spinner.bas

shared:
	fbc -w all -lib -i include src/spinner.bas
