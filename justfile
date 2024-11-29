# Default justfile

SRC_DIR:="/typesetting/src"
BUILD_DIR:="/typesetting/build"

default: marp-all

# Marp: build html and pdf slide decks and txt notes from markdown source file
marp-all: marp-pdf marp-html marp-notes

# Marp: build pdf slide deck from source file
marp-pdf:
	marp --input-dir={{SRC_DIR}} --output={{BUILD_DIR}} --pdf --pdf-outlines --pdf-outlines.pages=false --allow-local-files

# Marp: build html slide deck from source file
marp-html:
	marp --input-dir={{SRC_DIR}} --output={{BUILD_DIR}} --allow-local-files

# Marp: build txt slide deck notes from source file
marp-notes:
	marp --input-dir={{SRC_DIR}} --output={{BUILD_DIR}} --notes --allow-local-files


