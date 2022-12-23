import poppler_glib
import std/[uri, strformat]
import cairo

proc main =
  # Load the PDF document
  var fname = parseUri("file:///home/jose/Descargas/Escrituras Espartales.pdf") 
  var password = ""

  var doc = newDocument( fname, password )

  echo "Number of pages: ", doc.numberPages() # Get the number of pages in the document

  var page = doc.getPage(0)

  var n = 1
  for img in page.images:
    echo repr img
    img.toPng(fmt"page_{n:.2d}.png")
    n += 1


main()
