FILE=resume.json

pdf: $(FILE) | validate
	hackmyresume build $(FILE) to out/Carlin.Gregory.html --theme theme/jsonresume-theme-eloquent --no-prettify
	hackmyresume build $(FILE) to out/Carlin.Gregory.pdf --theme theme/positive
	cp out/Carlin.Gregory.html index.html

validate: $(FILE)
	hackmyresume validate $(FILE)

clean:
	rm -rf out/*
