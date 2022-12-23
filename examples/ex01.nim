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
  
