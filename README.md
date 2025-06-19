# NoteBuilder

NoteBuilder is a simple utility script written as a Makefile that uses pandoc to generate HTML notes from Markdown (that can further be converted into PDF).

# Usage

Clone this repo and use it as a template for private notes.

The Makefile contains a list of target `.html` file paths that need a coresponding `.md` file to be generated from. If no Makrdown file is found an empty one will be created.

You can edit the included `internal/note_styles.css` file to change how the generated HTML looks.

You can edit the included `internal/header.md` and `internal/footer.md` files to change the header and footer of the generated page.

Run the script with make, make sure you have pandoc installed and available on the path.
