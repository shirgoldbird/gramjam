.DEFAULT_GOAL := build

install:
	npm install

build:
	npm run build

start: build
	npm run preview
