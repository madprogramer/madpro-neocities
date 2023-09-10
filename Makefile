DATE := $(shell /bin/date)
site: site/index.html.template
	mkdir -p _site
	cp -r site/ _site
	#sed -e "s/__LAST_UPDATED__/$(DATE)/" index.html.template > _site/index.html
	sed -e "s/__LAST_UPDATED__/$(DATE)/" site/index.html.template > _site/index.html
	rm _site/index.html.template