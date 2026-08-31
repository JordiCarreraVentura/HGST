# Human-Generated Syntactic Trees

# Daily Publishing Workflow

1. Write notes in Obsidian as normal using [[wikilinks]] and embeds.
2. Move finished notes to your local `HGST-public/` folder.
3. Run `publish` Script: Open terminal in Blog-Repo/ and execute the script:

	```
	bash
	./publish.sh
	```

   The script
   1. runs obsidian-export,
   2. commits the transformed Markdown, and 
   3. pushes to main.

4. GitHub Actions detects the commit and builds your static site automatically.