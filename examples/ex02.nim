import poppler_glib
import std/[uri, strformat]
# nimble install cairo
import cairo

proc main =
  # Load the PDF document
  var fname = parseUri("file:///home/jose/src/nimlang/poppler_glib.nim/example/example.pdf") 
  var password = ""

  var doc = newDocument( fname, password )

  echo "Number of pages: ", doc.numberPages() # Get the number of pages in the document

  var page = doc.getPage(0)
  var (w,h) = page.getSize() # Get the size of the page
  echo (w,h)

  # Create a cairo surface and context for rendering
  var
    surface = imageSurfaceCreate(FORMAT_ARGB32, w.abs.int32, h.abs.int32)
    ctx = surface.create()

  page.render(ctx)    # Render the page to the cairo context

  discard surface.writeToPng("page.png")   

  # var n = 1
  # for page in doc.pages:
  #   var (w,h) = page.getSize() # Get the size of the page

  #   # Create a cairo surface and context for rendering
  #   var
  #     surface = imageSurfaceCreate(FORMAT_ARGB32, w.abs.int32, h.abs.int32)
  #     ctx = surface.create()
  #   page.render(ctx)
     
  #   discard surface.writeToPng( fmt"page_{n}.png" ) 
  #   n += 1

main()
  
#[
    // Clean up
    cairo_destroy(context);
    cairo_surface_destroy(surface);
    g_object_unref(page);
  }

  // Clean up
  g_object_unref(document);

]#