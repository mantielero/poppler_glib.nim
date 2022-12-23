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
    # var
    #   surface = imageSurfaceCreate(FORMAT_ARGB32, img.getWidth, img.getHeight)
    #   ctx = img.create()
    
    # ctx.setSource(surface, area.x1, area.y1)
    # ctx.paint
    # Next item in the list
    tmp = tmp.next

  # if tmp == nil:
  #   echo "tmp is nil"
  # else:
  #   var temp = tmp.data
  #   echo repr cast[pointer](temp)

  # var first = tmp.g_list_first
  # echo first.length
  #var tmp2 = tmp.next
  #echo repr tmp2.data
  #var tmp2 = tmp[].g_list_next
  #echo repr tmp2[].data  
  #echo repr (tmp[]).getData



#[
// Iterate over the list of images and save each one to a separate file
        int index = 0;
        for (GList *l = images; l != NULL; l = l->next)
        {
            // Get the current image mapping
            poppler_image_mapping_t *image_mapping = (poppler_image_mapping_t *)l->data;

            // Extract the image data from the Cairo context
            cairo_surface_t *image = cairo_image_surface_create(CAIRO_FORMAT_ARGB32, image_mapping->area.width, image_mapping->area.height);
            cairo_t *image_cr = cairo_create(image);


            cairo_set_source_surface(image_cr, surface, -image_mapping->area.x, -image_mapping->area.y);
            cairo_paint(image_cr);
            cairo_destroy(image_cr);

            // Save the image to a file
            char filename[256];
            sprintf(filename, "image-
]#


main()
