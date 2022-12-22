##  poppler-layer.h: glib interface to poppler
##
##  Copyright (C) 2008 Carlos Garcia Campos <carlosgc@gnome.org>
##
##  This program is free software; you can redistribute it and/or modify
##  it under the terms of the GNU General Public License as published by
##  the Free Software Foundation; either version 2, or (at your option)
##  any later version.
##
##  This program is distributed in the hope that it will be useful,
##  but WITHOUT ANY WARRANTY; without even the implied warranty of
##  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##  GNU General Public License for more details.
##
##  You should have received a copy of the GNU General Public License
##  along with this program; if not, write to the Free Software
##  Foundation, Inc., 51 Franklin Street - Fifth Floor, Boston, MA 02110-1301, USA.
##

import
  poppler

const
  POPPLER_TYPE_LAYER* = (popplerLayerGetType())

template poppler_Layer*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Layer, popplerLayer))

template poppler_Is_Layer*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Layer))

proc popplerLayerGetType*(): GType {.cdecl, importc: "poppler_layer_get_type",
                                  header: "poppler-layer.h".}
proc popplerLayerGetTitle*(layer: ptr PopplerLayer): ptr Gchar {.cdecl,
    importc: "poppler_layer_get_title", header: "poppler-layer.h".}
proc popplerLayerIsVisible*(layer: ptr PopplerLayer): Gboolean {.cdecl,
    importc: "poppler_layer_is_visible", header: "poppler-layer.h".}
proc popplerLayerShow*(layer: ptr PopplerLayer) {.cdecl,
    importc: "poppler_layer_show", header: "poppler-layer.h".}
proc popplerLayerHide*(layer: ptr PopplerLayer) {.cdecl,
    importc: "poppler_layer_hide", header: "poppler-layer.h".}
proc popplerLayerIsParent*(layer: ptr PopplerLayer): Gboolean {.cdecl,
    importc: "poppler_layer_is_parent", header: "poppler-layer.h".}
proc popplerLayerGetRadioButtonGroupId*(layer: ptr PopplerLayer): Gint {.cdecl,
    importc: "poppler_layer_get_radio_button_group_id", header: "poppler-layer.h".}