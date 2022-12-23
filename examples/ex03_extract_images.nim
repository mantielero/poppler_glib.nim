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
  var (w,h) = page.getSize() # Get the size of the page
  echo (w,h)

  # Get the list of images in the page
  var tmp = page.getImageMapping()[] # To deref
  var nImages = tmp.length
  #echo repr first.data
  echo "Number of images: ", nImages
  while tmp != nil:
    # Get the current image mapping
    #var imageMapping = tmp.data #poppler_image_mapping_t *image_mapping = (poppler_image_mapping_t *)l->data;
    var imageMapping = cast[PopplerImageMapping](tmp.data)
    var area = imageMapping.area
    echo fmt"x1:{area.x1} y1:{area.y1} x2:{area.x2} y2:{area.y2}"
    var img = popplerPageGetImage(page, imageMapping.image_id)
    echo img.getWidth    
    echo img.getHeight
    discard img.writeToPng("page.png")  

    # Next item in the list
    tmp = tmp.next


main()
