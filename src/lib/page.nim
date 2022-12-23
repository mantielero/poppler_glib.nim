import ../wrapper/poppler_glib
import poppler_types
import cairo  # Context


#[
https://stackoverflow.com/questions/10601995/how-to-display-a-pdf-in-its-true-scale-with-poppler

The points in a PDF file are physical units, you can measure them with a ruler. 
The dots (pixels) in the image are virtual units and the connection between
them is done through the resolution factor. When you move the content from
vector space to raster space you decide the relation between points and
pixels (the resolution used for conversion), it is up to your application
to decide what 100% means.

Most applications use the DPI of the screen as reference for 100% scale. 
On Windows this usually means 96DPI, one inch from your PDF file is
represented on 96 pixels on the screen. Adobe Reader lets you set your
own resolution to be used for 100% scale and by default it is 110DPI.
]#
proc getSize*(page:Page):tuple[width:float,height:float] =
  ## gets the size of page at the current scale and rotation.
  var w,h:cdouble
  popplerPageGetSize( page, w.addr, h.addr)
  return (w.float, h.float)



proc render*(page: Page; cairoContext: ptr Context) =
  popplerPageRender(page, cairoContext)


# poppler_page_get_image_mapping ()
proc getImageMapping*(page:Page):ptr GList =
  result = popplerPageGetImageMapping( page )
  
  #echo repr result[].data[]
