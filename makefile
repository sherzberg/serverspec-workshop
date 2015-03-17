
serve:
	sudo docker run --rm -v "$(PWD):/src" -p 4000:4000 grahamc/jekyll serve --watch -H 0.0.0.0

test:
	cd _includes/rspec/ && bats .
	cd _includes/serverspec/ && bats .
