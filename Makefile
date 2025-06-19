## INPUT SECTION ##

# Paths to output .html files, the require coresponding .md files under the same directories and with the same names
TARGETS = example/example.html

# CSS stylesheet file used for styling the HTML output
STYLESHEET = internal/note_styles.css
# A header file written in markdown (optionally html) that gets preppended before the main document and the Table of Contents
HEADER = internal/header.md
# A footer file written in markdown (optionally html) that appended after the main document at the bottom of the page
FOOTER = internal/footer.md
# Template for Table of Contents styling
TOC_TEMPLATE = internal/toc.template

## FLAGS SECTION ##
## EDIT AT YOUR OWN RISK ##

# Flags passed to pandoc to create the output files
TARGET_FLAGS = --from markdown+implicit_header_references+task_lists+definition_lists+grid_tables+simple_tables+multiline_tables+superscript+subscript+tex_math_dollars+raw_html --embed-resources

## TARGETS ##

all: $(TARGETS)

# Build the target .html file from the intermediate _int.md files
$(TARGETS): %.html: %_int.md $(STYLESHEET) $(HEADER) $(FOOTER)
	@echo "NoteBuilder: Building '$@' from '$<'"
	@pandoc $(TARGET_FLAGS) -B $(HEADER) -A $(FOOTER) $< -s --css=$(STYLESHEET) -o $@

# Create the intermediate file which will contain the Table of Contents
%_int.md: %.md
	@touch $@
	@pandoc --toc --template=$(TOC_TEMPLATE) $(TARGET_FLAGS) $< -s --css=$(STYLESHEET) -o $@

%.md:
	@touch $@

