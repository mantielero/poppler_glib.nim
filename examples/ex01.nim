{.passC: gorge("pkg-config --cflags poppler-glib cairo").}
{.passL: gorge("pkg-config --libs poppler-glib cairo").}

#import gintro/[gtk4, gobject, gio]
#import poppler_glib
# let gtype = typeFromName("guint")
type
  PopplerDocument* {.importc: "PopplerDocument",
              header: "poppler.h", incompletestruct.} = object
  Document* = ptr PopplerDocument
  GError* {.importc: "GError",
                            header: "poppler.h".} = object 

{.push dynlib:"libpoppler-glib.so".}
proc newDocument*( uri: cstring; 
                  password: cstring = "".cstring; 
                  error: ptr ptr GError = nil):Document {.
    importc:"poppler_document_new_from_file", cdecl .}


proc numberPages(doc:Document):cint {.importc:"poppler_document_get_n_pages",cdecl.}
{.pop.}


proc main =
  # Load the PDF document
  var fname = "file:///home/jose/src/nimlang/poppler_glib.nim/example/example.pdf".cstring
  var password = "".cstring
  var error:ptr ptr GError
  var doc = newDocument( fname, password, error)

  if doc == nil:
    echo "Failed to load PDF document" # g_error("Failed to load PDF document");

  echo doc.numberPages() # Get the number of pages in the document

main()
  
#[


int main(int argc, char *argv[]) {

  // Loop through the pages
  for (int i = 0; i < n_pages; i++) {
    // Get the page
    PopplerPage *page = poppler_document_get_page(document, i);
    if (!page) {
      g_error("Failed to load page %d", i);
      continue;
    }

    // Get the size of the page
    double width, height;
    poppler_page_get_size(page, &width, &height);

    // Create a cairo surface and context for rendering
    cairo_surface_t *surface = cairo_image_surface_create(CAIRO_FORMAT_ARGB32, width, height);
    cairo_t *context = cairo_create(surface);

    // Render the page to the cairo context
    poppler_page_render(page, context);

    // Save the cairo surface to an image file
    cairo_surface_write_to_png(surface, "page.png");

    // Clean up
    cairo_destroy(context);
    cairo_surface_destroy(surface);
    g_object_unref(page);
  }

  // Clean up
  g_object_unref(document);

  return 0;
}
]#