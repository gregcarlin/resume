FILE=resume.fresh.json

pdf: $(FILE) | validate
	hackmyresume build $(FILE) to out/Carlin.Gregory.pdf --theme modern

validate: $(FILE)
	hackmyresume validate $(FILE)
