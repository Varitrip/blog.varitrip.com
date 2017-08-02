serve:
	hugo serve --theme octpress

update-theme:
	@rm -rf themes/octpress
	@git clone --depth 1 https://github.com/parsiya/Hugo-Octopress.git themes/octpress
	@rm -rf themes/octpress/.git
