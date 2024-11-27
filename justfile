SRC_DIR:= "src/"
BUILD_DIR:= "build/"

# example target
example:
	marp {{SRC_DIR}}/slides.md -o {{BUILD_DIR}}/slides.pdf

