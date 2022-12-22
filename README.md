# Introduction
I was aiming to get PDF's pages as images. To do so I started wrapping `poppler-glib`.

Only the bare minimum is working, but it should be easy to make other bits to work.

# The code
- `src/wrapper/tmp`: this was used to create the basic structure. The headers are converted file by file using `c2nim`. At this stage it shouldn't be used. Also `postprocess.nim` was used for this purpose.
- `src/wrapper/glib`: the types definitions are moved from each file into `glib_types.nim`.
- `src/lib`: contains a sugarized version of the library.

# What works?
- opening a file
- getting the number of pages
- getting a page
- getting a page's size
- iterating over all the pages
- exporting a page as a PNG file

# TODO
Using `glib` from `gintro`.