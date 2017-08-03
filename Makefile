THEME_NAME=varitrip
THEME_URL=https://github.com/gcushen/hugo-academic.git
PUBLISH_URL=git@github.com:varitrip/varitrip.github.io.git
PUBLISH_DIR=$(PWD)/public

serve:
	@hugo serve --renderToDisk

generate:
	@rm -rf $(PUBLISH_DIR)
	@hugo

update-theme:
	@rm -rf themes/$(THEME_NAME)
	@git clone --depth 1 $(THEME_URL) themes/$(THEME_NAME)
	@rm -rf $(PWD)/themes/$(THEME_NAME)/.git

publish:
	@rm -rf $(PUBLISH_DIR)
	@hugo || exit
	@cd $(PUBLISH_DIR) && git init && git add * && \
		git commit -am "Update blog." && git push

.PHONY: serve generate update-theme publish
