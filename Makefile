PATH := ./node_modules/.bin:$(PATH)
SHELL := /bin/bash
args = $(filter-out $@, $(MAKECMDGOALS))

install:
	yarn

clean:
	rm -rf build

compile:
	stylus -c src/includes/layout.styl -o build
	pug -P src/countries/**/* -o build 