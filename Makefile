website:
	cd website && rm -rf public && hugo

serve:
	cd website && hugo serve

.PHONY: website serve 
