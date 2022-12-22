import ../wrapper/poppler_glib
import poppler_types
import cairo  # Context

proc getSize*(page:Page):tuple[width:float,height:float] = 
  var w,h:cdouble
  popplerPageGetSize( page, w.addr, h.addr)
  return (w.float, h.float)


proc render*(page: Page; cairoContext: ptr Context) =
  popplerPageRender(page, cairoContext)
#[
    if (!page) {
      g_error("Failed to load page %d", i);
      continue;
    }
]#