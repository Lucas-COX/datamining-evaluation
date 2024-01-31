f ?=

install:
	@pip install -r requirements.txt

pdf:
	@jupyter nbconvert --to html $(f).ipynb
	@wkhtmltopdf $(f).html $(f).pdf
	@rm -f $(f).html

slides:
	@jupyter nbconvert --to slides $(f).ipynb

.PHONY: install \
		spotify-pdf \
		spotify-slides \