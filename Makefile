NOTEBOOKS_ROOT := ./notebooks
f ?=

install:
	@pip install -r requirements.txt

pdf:
	@jupyter nbconvert --to html $(NOTEBOOKS_ROOT)/$(f).ipynb --output ../$(f)
	@wkhtmltopdf $(f).html $(f).pdf
	@rm -f $(f).html

slides:
	@jupyter nbconvert --to slides $(NOTEBOOKS_ROOT)/$(f).ipynb --output ../$(f)

.PHONY: install \
		spotify-pdf \
		spotify-slides \