# Note Builder
Note Builder is a simple utility script written as a Makefile and using pandoc to generate notes from Makrdown into HTML that can further be converted into PDF.

# Usage

Clone this repo and use it as a template for private notes.

The Makefile contains a list of target `.html` file paths that need a coresponding `.md` file to be generated from. If no Makrdown file is found an empty one will be created.

You can edit the included `note_styles.css` file to change how the generated HTML looks like.

Run the script with make.
