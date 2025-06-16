targets = example.html

stylesheet = note_styles.css
mixin = mixin.md

all: $(targets)

$(targets): %.html: %.md $(stylesheet) $(mixin)
	@echo "NoteBuilder: Building '$@' from '$<'"
	@pandoc --from markdown+implicit_header_references+task_lists+definition_lists+grid_tables+simple_tables+multiline_tables+superscript+subscript+tex_math_dollars+raw_html $(mixin) $< -s --css=$(stylesheet) -o $@ --embed-resources

%.md:
	@touch $@
