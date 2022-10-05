preview:
	bundle exec jekyll serve -l

build:
	bundle exec jekyll build
	cd _site/ && npx all-relative
