import glib_types
import cairo  # Context
##  poppler-page.h: glib interface to poppler
##  Copyright (C) 2004, Red Hat, Inc.
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

# import
#   poppler

# const
#   POPPLER_TYPE_PAGE* = (popplerPageGetType())

template poppler_Page*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Page, popplerPage))

template poppler_Is_Page*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Page))

{.push dynlib:"libpoppler-glib.so", cdecl.} # header: "poppler-page.h"
proc popplerPageGetType*(): GType {.importc: "poppler_page_get_type".}

# ptr CairoT)
proc popplerPageRender*(page: ptr PopplerPage; cairo: ptr Context) {.importc: "poppler_page_render".}

proc popplerPageRenderForPrinting*(page: ptr PopplerPage; cairo: ptr CairoT) {.
    importc: "poppler_page_render_for_printing".}

proc popplerPageRenderForPrintingWithOptions*(page: ptr PopplerPage;
    cairo: ptr CairoT; options: PopplerPrintFlags) {.
    importc: "poppler_page_render_for_printing_with_options".}

proc popplerPageGetThumbnail*(page: ptr PopplerPage): ptr CairoSurfaceT {.
    importc: "poppler_page_get_thumbnail".}

proc popplerPageRenderSelection*(page: ptr PopplerPage; cairo: ptr CairoT;
                                selection: ptr PopplerRectangle;
                                oldSelection: ptr PopplerRectangle;
                                style: PopplerSelectionStyle;
                                glyphColor: ptr PopplerColor;
                                backgroundColor: ptr PopplerColor) {.
    importc: "poppler_page_render_selection".}


proc popplerPageGetSize*(page: ptr PopplerPage; width: ptr cdouble; height: ptr cdouble) {.
    importc: "poppler_page_get_size".} # , header: "poppler-page.h"
{.pop.}
proc popplerPageGetIndex*(page: ptr PopplerPage): cint {.cdecl,
    importc: "poppler_page_get_index", header: "poppler-page.h".}
proc popplerPageGetLabel*(page: ptr PopplerPage): ptr Gchar {.cdecl,
    importc: "poppler_page_get_label", header: "poppler-page.h".}
proc popplerPageGetDuration*(page: ptr PopplerPage): cdouble {.cdecl,
    importc: "poppler_page_get_duration", header: "poppler-page.h".}
proc popplerPageGetTransition*(page: ptr PopplerPage): ptr PopplerPageTransition {.
    cdecl, importc: "poppler_page_get_transition", header: "poppler-page.h".}
proc popplerPageGetThumbnailSize*(page: ptr PopplerPage; width: ptr cint;
                                 height: ptr cint): Gboolean {.cdecl,
    importc: "poppler_page_get_thumbnail_size", header: "poppler-page.h".}
proc popplerPageFindTextWithOptions*(page: ptr PopplerPage; text: cstring;
                                    options: PopplerFindFlags): ptr GList {.cdecl,
    importc: "poppler_page_find_text_with_options", header: "poppler-page.h".}
proc popplerPageFindText*(page: ptr PopplerPage; text: cstring): ptr GList {.cdecl,
    importc: "poppler_page_find_text", header: "poppler-page.h".}
proc popplerPageRenderToPs*(page: ptr PopplerPage; psFile: ptr PopplerPSFile) {.cdecl,
    importc: "poppler_page_render_to_ps", header: "poppler-page.h".}
proc popplerPageGetText*(page: ptr PopplerPage): cstring {.cdecl,
    importc: "poppler_page_get_text", header: "poppler-page.h".}
proc popplerPageGetTextForArea*(page: ptr PopplerPage; area: ptr PopplerRectangle): cstring {.
    cdecl, importc: "poppler_page_get_text_for_area", header: "poppler-page.h".}
proc popplerPageGetSelectedText*(page: ptr PopplerPage;
                                style: PopplerSelectionStyle;
                                selection: ptr PopplerRectangle): cstring {.cdecl,
    importc: "poppler_page_get_selected_text", header: "poppler-page.h".}
proc popplerPageGetSelectedRegion*(page: ptr PopplerPage; scale: Gdouble;
                                  style: PopplerSelectionStyle;
                                  selection: ptr PopplerRectangle): ptr CairoRegionT {.
    cdecl, importc: "poppler_page_get_selected_region", header: "poppler-page.h".}
proc popplerPageGetSelectionRegion*(page: ptr PopplerPage; scale: Gdouble;
                                   style: PopplerSelectionStyle;
                                   selection: ptr PopplerRectangle): ptr GList {.
    cdecl, importc: "poppler_page_get_selection_region", header: "poppler-page.h".}
proc popplerPageSelectionRegionFree*(region: ptr GList) {.cdecl,
    importc: "poppler_page_selection_region_free", header: "poppler-page.h".}
proc popplerPageGetLinkMapping*(page: ptr PopplerPage): ptr GList {.cdecl,
    importc: "poppler_page_get_link_mapping", header: "poppler-page.h".}
proc popplerPageFreeLinkMapping*(list: ptr GList) {.cdecl,
    importc: "poppler_page_free_link_mapping", header: "poppler-page.h".}
proc popplerPageGetImageMapping*(page: ptr PopplerPage): ptr GList {.cdecl,
    importc: "poppler_page_get_image_mapping", header: "poppler-page.h".}
proc popplerPageFreeImageMapping*(list: ptr GList) {.cdecl,
    importc: "poppler_page_free_image_mapping", header: "poppler-page.h".}
proc popplerPageGetImage*(page: ptr PopplerPage; imageId: Gint): ptr CairoSurfaceT {.
    cdecl, importc: "poppler_page_get_image", header: "poppler-page.h".}
proc popplerPageGetFormFieldMapping*(page: ptr PopplerPage): ptr GList {.cdecl,
    importc: "poppler_page_get_form_field_mapping", header: "poppler-page.h".}
proc popplerPageFreeFormFieldMapping*(list: ptr GList) {.cdecl,
    importc: "poppler_page_free_form_field_mapping", header: "poppler-page.h".}
proc popplerPageGetAnnotMapping*(page: ptr PopplerPage): ptr GList {.cdecl,
    importc: "poppler_page_get_annot_mapping", header: "poppler-page.h".}
proc popplerPageFreeAnnotMapping*(list: ptr GList) {.cdecl,
    importc: "poppler_page_free_annot_mapping", header: "poppler-page.h".}
proc popplerPageAddAnnot*(page: ptr PopplerPage; annot: ptr PopplerAnnot) {.cdecl,
    importc: "poppler_page_add_annot", header: "poppler-page.h".}
proc popplerPageRemoveAnnot*(page: ptr PopplerPage; annot: ptr PopplerAnnot) {.cdecl,
    importc: "poppler_page_remove_annot", header: "poppler-page.h".}
proc popplerPageGetCropBox*(page: ptr PopplerPage; rect: ptr PopplerRectangle) {.cdecl,
    importc: "poppler_page_get_crop_box", header: "poppler-page.h".}
proc popplerPageGetBoundingBox*(page: ptr PopplerPage; rect: ptr PopplerRectangle): Gboolean {.
    cdecl, importc: "poppler_page_get_bounding_box", header: "poppler-page.h".}
proc popplerPageGetTextLayout*(page: ptr PopplerPage;
                              rectangles: ptr ptr PopplerRectangle;
                              nRectangles: ptr Guint): Gboolean {.cdecl,
    importc: "poppler_page_get_text_layout", header: "poppler-page.h".}
proc popplerPageGetTextLayoutForArea*(page: ptr PopplerPage;
                                     area: ptr PopplerRectangle;
                                     rectangles: ptr ptr PopplerRectangle;
                                     nRectangles: ptr Guint): Gboolean {.cdecl,
    importc: "poppler_page_get_text_layout_for_area", header: "poppler-page.h".}
proc popplerPageGetTextAttributes*(page: ptr PopplerPage): ptr GList {.cdecl,
    importc: "poppler_page_get_text_attributes", header: "poppler-page.h".}
proc popplerPageFreeTextAttributes*(list: ptr GList) {.cdecl,
    importc: "poppler_page_free_text_attributes", header: "poppler-page.h".}
proc popplerPageGetTextAttributesForArea*(page: ptr PopplerPage;
    area: ptr PopplerRectangle): ptr GList {.cdecl, importc: "poppler_page_get_text_attributes_for_area",
                                        header: "poppler-page.h".}
##  A rectangle on a page, with coordinates in PDF points.

# const
#   POPPLER_TYPE_RECTANGLE* = (popplerRectangleGetType())

## *
##  PopplerRectangle:
##  @x1: x coordinate of lower left corner
##  @y1: y coordinate of lower left corner
##  @x2: x coordinate of upper right corner
##  @y2: y coordinate of upper right corner
##
##  A #PopplerRectangle is used to describe
##  locations on a page and bounding boxes
##



proc popplerRectangleGetType*(): GType {.cdecl,
                                      importc: "poppler_rectangle_get_type",
                                      header: "poppler-page.h".}
proc popplerRectangleNew*(): ptr PopplerRectangle {.cdecl,
    importc: "poppler_rectangle_new", header: "poppler-page.h".}
proc popplerRectangleCopy*(rectangle: ptr PopplerRectangle): ptr PopplerRectangle {.
    cdecl, importc: "poppler_rectangle_copy", header: "poppler-page.h".}
proc popplerRectangleFree*(rectangle: ptr PopplerRectangle) {.cdecl,
    importc: "poppler_rectangle_free", header: "poppler-page.h".}
proc popplerRectangleFindGetMatchContinued*(rectangle: ptr PopplerRectangle): Gboolean {.
    cdecl, importc: "poppler_rectangle_find_get_match_continued",
    header: "poppler-page.h".}
proc popplerRectangleFindGetIgnoredHyphen*(rectangle: ptr PopplerRectangle): Gboolean {.
    cdecl, importc: "poppler_rectangle_find_get_ignored_hyphen",
    header: "poppler-page.h".}
##  A point on a page, with coordinates in PDF points.

# const
#   POPPLER_TYPE_POINT* = (popplerPointGetType())

## *
##  PopplerPoint:
##  @x: x coordinate
##  @y: y coordinate
##
##  A #PopplerPoint is used to describe a location point on a page
##



proc popplerPointGetType*(): GType {.cdecl, importc: "poppler_point_get_type",
                                  header: "poppler-page.h".}
proc popplerPointNew*(): ptr PopplerPoint {.cdecl, importc: "poppler_point_new",
                                        header: "poppler-page.h".}
proc popplerPointCopy*(point: ptr PopplerPoint): ptr PopplerPoint {.cdecl,
    importc: "poppler_point_copy", header: "poppler-page.h".}
proc popplerPointFree*(point: ptr PopplerPoint) {.cdecl,
    importc: "poppler_point_free", header: "poppler-page.h".}
##  PopplerQuadrilateral
##  A quadrilateral encompasses a word or group of contiguous words in the
##  text underlying the annotation. The coordinates for each quadrilateral are
##  given in the order x1 y1 x2 y2 x3 y3 x4 y4 specifying the quadrilateral’s four
##   vertices in counterclockwise order

# const
#   POPPLER_TYPE_QUADRILATERAL* = (popplerQuadrilateralGetType())

## *
##   PopplerQuadrilateral:
##   @p1: a #PopplerPoint with the first vertex coordinates
##   @p2: a #PopplerPoint with the second vertex coordinates
##   @p3: a #PopplerPoint with the third vertex coordinates
##   @p4: a #PopplerPoint with the fourth vertex coordinates
##
##   A #PopplerQuadrilateral is used to describe rectangle-like polygon
##   with arbitrary inclination on a page.
##
##   Since: 0.26
##



proc popplerQuadrilateralGetType*(): GType {.cdecl,
    importc: "poppler_quadrilateral_get_type", header: "poppler-page.h".}
proc popplerQuadrilateralNew*(): ptr PopplerQuadrilateral {.cdecl,
    importc: "poppler_quadrilateral_new", header: "poppler-page.h".}
proc popplerQuadrilateralCopy*(quad: ptr PopplerQuadrilateral): ptr PopplerQuadrilateral {.
    cdecl, importc: "poppler_quadrilateral_copy", header: "poppler-page.h".}
proc popplerQuadrilateralFree*(quad: ptr PopplerQuadrilateral) {.cdecl,
    importc: "poppler_quadrilateral_free", header: "poppler-page.h".}
##  A color in RGB

# const
#   POPPLER_TYPE_COLOR* = (popplerColorGetType())

## *
##  PopplerColor:
##  @red: the red component of color
##  @green: the green component of color
##  @blue: the blue component of color
##
##  A #PopplerColor describes a RGB color. Color components
##  are values between 0 and 65535
##



proc popplerColorGetType*(): GType {.cdecl, importc: "poppler_color_get_type",
                                  header: "poppler-page.h".}
proc popplerColorNew*(): ptr PopplerColor {.cdecl, importc: "poppler_color_new",
                                        header: "poppler-page.h".}
proc popplerColorCopy*(color: ptr PopplerColor): ptr PopplerColor {.cdecl,
    importc: "poppler_color_copy", header: "poppler-page.h".}
proc popplerColorFree*(color: ptr PopplerColor) {.cdecl,
    importc: "poppler_color_free", header: "poppler-page.h".}
##  Text attributes.

# const
#   POPPLER_TYPE_TEXT_ATTRIBUTES* = (popplerTextAttributesGetType())

## *
##  PopplerTextAttributes:
##  @font_name: font name
##  @font_size: font size
##  @is_underlined: if text is underlined
##  @color: a #PopplerColor, the foreground color
##  @start_index: start position this text attributes apply
##  @end_index: end position this text attributes apply
##
##  A #PopplerTextAttributes is used to describe text attributes of a range of text
##
##  Since: 0.18
##



proc popplerTextAttributesGetType*(): GType {.cdecl,
    importc: "poppler_text_attributes_get_type", header: "poppler-page.h".}
proc popplerTextAttributesNew*(): ptr PopplerTextAttributes {.cdecl,
    importc: "poppler_text_attributes_new", header: "poppler-page.h".}
proc popplerTextAttributesCopy*(textAttrs: ptr PopplerTextAttributes): ptr PopplerTextAttributes {.
    cdecl, importc: "poppler_text_attributes_copy", header: "poppler-page.h".}
proc popplerTextAttributesFree*(textAttrs: ptr PopplerTextAttributes) {.cdecl,
    importc: "poppler_text_attributes_free", header: "poppler-page.h".}
##  Mapping between areas on the current page and PopplerActions

# const
#   POPPLER_TYPE_LINK_MAPPING* = (popplerLinkMappingGetType())

## *
##  PopplerLinkMapping:
##  @area: a #PopplerRectangle representing an area of the page
##  @action: a #PopplerAction
##
##  A #PopplerLinkMapping structure represents the location
##  of @action on the page
##



proc popplerLinkMappingGetType*(): GType {.cdecl, importc: "poppler_link_mapping_get_type",
                                        header: "poppler-page.h".}
proc popplerLinkMappingNew*(): ptr PopplerLinkMapping {.cdecl,
    importc: "poppler_link_mapping_new", header: "poppler-page.h".}
proc popplerLinkMappingCopy*(mapping: ptr PopplerLinkMapping): ptr PopplerLinkMapping {.
    cdecl, importc: "poppler_link_mapping_copy", header: "poppler-page.h".}
proc popplerLinkMappingFree*(mapping: ptr PopplerLinkMapping) {.cdecl,
    importc: "poppler_link_mapping_free", header: "poppler-page.h".}
##  Page Transition

# const
#   POPPLER_TYPE_PAGE_TRANSITION* = (popplerPageTransitionGetType())

## *
##  PopplerPageTransition:
##  @type: the type of transtition
##  @alignment: the dimension in which the transition effect shall occur.
##  Only for #POPPLER_PAGE_TRANSITION_SPLIT and #POPPLER_PAGE_TRANSITION_BLINDS transition types
##  @direction: the direction of motion for the transition effect.
##  Only for #POPPLER_PAGE_TRANSITION_SPLIT, #POPPLER_PAGE_TRANSITION_BOX and #POPPLER_PAGE_TRANSITION_FLY
##  transition types
##  @duration: the duration of the transition effect
##  @angle: the direction in which the specified transition effect shall moves,
##  expressed in degrees counterclockwise starting from a left-to-right direction.
##  Only for #POPPLER_PAGE_TRANSITION_WIPE, #POPPLER_PAGE_TRANSITION_GLITTER, #POPPLER_PAGE_TRANSITION_FLY,
##  #POPPLER_PAGE_TRANSITION_COVER, #POPPLER_PAGE_TRANSITION_UNCOVER and #POPPLER_PAGE_TRANSITION_PUSH
##  transition types
##  @scale: the starting or ending scale at which the changes shall be drawn.
##  Only for #POPPLER_PAGE_TRANSITION_FLY transition type
##  @rectangular: whether the area that will be flown is rectangular and opaque.
##  Only for #POPPLER_PAGE_TRANSITION_FLY transition type
##
##  A #PopplerPageTransition structures describes a visual transition
##  to use when moving between pages during a presentation
##



proc popplerPageTransitionGetType*(): GType {.cdecl,
    importc: "poppler_page_transition_get_type", header: "poppler-page.h".}
proc popplerPageTransitionNew*(): ptr PopplerPageTransition {.cdecl,
    importc: "poppler_page_transition_new", header: "poppler-page.h".}
proc popplerPageTransitionCopy*(transition: ptr PopplerPageTransition): ptr PopplerPageTransition {.
    cdecl, importc: "poppler_page_transition_copy", header: "poppler-page.h".}
proc popplerPageTransitionFree*(transition: ptr PopplerPageTransition) {.cdecl,
    importc: "poppler_page_transition_free", header: "poppler-page.h".}
##  Mapping between areas on the current page and images

# const
#   POPPLER_TYPE_IMAGE_MAPPING* = (popplerImageMappingGetType())

## *
##  PopplerImageMapping:
##  @area: a #PopplerRectangle representing an area of the page
##  @image_id: an image identifier
##
##  A #PopplerImageMapping structure represents the location
##  of an image on the page
##



proc popplerImageMappingGetType*(): GType {.cdecl,
    importc: "poppler_image_mapping_get_type", header: "poppler-page.h".}
proc popplerImageMappingNew*(): ptr PopplerImageMapping {.cdecl,
    importc: "poppler_image_mapping_new", header: "poppler-page.h".}
proc popplerImageMappingCopy*(mapping: ptr PopplerImageMapping): ptr PopplerImageMapping {.
    cdecl, importc: "poppler_image_mapping_copy", header: "poppler-page.h".}
proc popplerImageMappingFree*(mapping: ptr PopplerImageMapping) {.cdecl,
    importc: "poppler_image_mapping_free", header: "poppler-page.h".}
##  Mapping between areas on the current page and form fields

# const
#   POPPLER_TYPE_FORM_FIELD_MAPPING* = (popplerFormFieldMappingGetType())

## *
##  PopplerFormFieldMapping:
##  @area: a #PopplerRectangle representing an area of the page
##  @field: a #PopplerFormField
##
##  A #PopplerFormFieldMapping structure represents the location
##  of @field on the page
##



proc popplerFormFieldMappingGetType*(): GType {.cdecl,
    importc: "poppler_form_field_mapping_get_type", header: "poppler-page.h".}
proc popplerFormFieldMappingNew*(): ptr PopplerFormFieldMapping {.cdecl,
    importc: "poppler_form_field_mapping_new", header: "poppler-page.h".}
proc popplerFormFieldMappingCopy*(mapping: ptr PopplerFormFieldMapping): ptr PopplerFormFieldMapping {.
    cdecl, importc: "poppler_form_field_mapping_copy", header: "poppler-page.h".}
proc popplerFormFieldMappingFree*(mapping: ptr PopplerFormFieldMapping) {.cdecl,
    importc: "poppler_form_field_mapping_free", header: "poppler-page.h".}
##  Mapping between areas on the current page and annots

# const
#   POPPLER_TYPE_ANNOT_MAPPING* = (popplerAnnotMappingGetType())

## *
##  PopplerAnnotMapping:
##  @area: a #PopplerRectangle representing an area of the page
##  @annot: a #PopplerAnnot
##
##  A #PopplerAnnotMapping structure represents the location
##  of @annot on the page
##



proc popplerAnnotMappingGetType*(): GType {.cdecl,
    importc: "poppler_annot_mapping_get_type", header: "poppler-page.h".}
proc popplerAnnotMappingNew*(): ptr PopplerAnnotMapping {.cdecl,
    importc: "poppler_annot_mapping_new", header: "poppler-page.h".}
proc popplerAnnotMappingCopy*(mapping: ptr PopplerAnnotMapping): ptr PopplerAnnotMapping {.
    cdecl, importc: "poppler_annot_mapping_copy", header: "poppler-page.h".}
proc popplerAnnotMappingFree*(mapping: ptr PopplerAnnotMapping) {.cdecl,
    importc: "poppler_annot_mapping_free", header: "poppler-page.h".}
