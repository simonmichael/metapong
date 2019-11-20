# metapong makefile

run:
	stack run metapong

run-watch watch:
	stack exec -- which metapong | entr -rn stack run metapong

BROWSE=open
LIVERELOADPORT=9501
LIVERELOAD=livereloadx -p $(LIVERELOADPORT) -s
# --exclude '*.html'
  # Exclude html files to avoid reloading browser as every page is generated.
  # A reload happens at the end when the css/js files get copied.

# Auto-rebuild site, and watch changes in a new browser window.
doc-watch:
	make doc-auto &
	(sleep 1; $(BROWSE) http://localhost:$(LIVERELOADPORT)/README.html) &
	$(LIVERELOAD)

# Auto-rebuild html docs on any doc source file change.
doc-auto:
	fd -e .md | entr make doc

# Build html docs.
doc: README.html

%.html: %.md
	pandoc -s $< -o $@

