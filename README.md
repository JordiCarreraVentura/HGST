# Human-Generated Syntactic Trees

Static blog built with [Hugo](https://gohugo.io/) + [PaperMod](https://github.com/adityatelange/hugo-PaperMod), published from Obsidian notes to GitHub Pages at `https://JordiCarreraVentura.github.io/HGST/`.

# Daily Publishing Workflow

1. Write notes in Obsidian as normal using [[wikilinks]] and embeds.
2. Move **finished** notes to your local `HGST-staging/` folder (sibling of this repo), with `draft: false` in the frontmatter (see `post_template.md` in this repository).
4. **Preview** locally with `hugo server` (live notes only) or `hugo server -D` (includes `draft: true` notes).
5. Run the **publish** script: open a terminal in `HGST/` and execute:

	```
	bash
	./publish.sh
	```

   The script
   1. clears previously exported `*.md` files from `content/posts/` (preserving `_index.md`),
   2. runs `obsidian-export` from `../HGST-staging` to `./content/posts`,
   3. commits the transformed Markdown, and
   4. pushes to `main`.

4. GitHub Actions detects the commit and builds your static site automatically (`hugo --minify`, PaperMod checked out via submodules).
