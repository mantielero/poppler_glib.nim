import ../wrapper/poppler_glib
import poppler_types
import gintro/glib
import std/[uri, strformat]


proc newDocument*(file:uri.Uri; password:string):Document =
  var errorPtr:ptr GError = nil
  var fname:string = $file
  result = popplerDocumentNewFromFile(fname.cstring, password.cstring, errorPtr.addr )
  if errorPtr != nil:
    raise newException(ValueError, fmt"{$errorPtr.message}: {$fname}" )


proc numberPages*(doc:Document):int =
  poppler_document_get_n_pages(doc)


proc getPage*( doc:Document; n:SomeUnsignedInt ):Page =
  popplerDocumentGetPage(doc, n.cint)

#[ TODO:
    if (!page) {
      g_error("Failed to load page %d", i);
      continue;
    }
]#

iterator pages*(doc:Document):Page =
  for i in 0..< doc.numberPages:
    yield doc.getPage(i.uint)
