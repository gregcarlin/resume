INPUT=resume.json

pdf: $(INPUT) | validate
	mkdir -p build
	cp -r build_static/* build/
	hackmyresume build $(INPUT) to build/Carlin.Gregory.html --theme theme/jsonresume-theme-eloquent --no-prettify
	hackmyresume build $(INPUT) to build/Carlin.Gregory.pdf --theme theme/positive
	hackmyresume build $(INPUT) to build/Carlin.Gregory.txt
	mkdir -p docs
	cp build/Carlin.Gregory.html docs/index.html
	#pdftk build/Carlin.Gregory.pdf cat 1 output docs/Carlin.Gregory.pdf
	cp build/Carlin.Gregory.pdf docs/Carlin.Gregory.pdf

validate: $(INPUT)
	hackmyresume validate $(INPUT)

clean:
	rm -rf build
	rm docs/index.html docs/Carlin.Gregory.pdf
