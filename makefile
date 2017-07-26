FILE=resume.json

pdf: $(FILE) | validate
	hackmyresume build $(FILE) to out/Carlin.Gregory.html --theme node_modules/jsonresume-theme-eloquent
	hackmyresume build $(FILE) to out/Carlin.Gregory.pdf --theme theme/positive

validate: $(FILE)
	hackmyresume validate $(FILE)
