.GOAL := build

build: ./vite-react-go-sample

./vite-react-go-sample: main.go ./dist/index.html
	go build .

./dist/index.html: ./node_modules src/*
	yarn build

./node_modules:
	yarn

.PHONY: clean clean-all dev
clean:
	rm -rf ./vite-react-go-sample

clean-all: clean
	rm -rf dist
