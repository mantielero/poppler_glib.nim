import glib_types

##  poppler-annot.h: glib interface to poppler
##
##  Copyright (C) 2007 Inigo Martinez <inigomartinez@gmail.com>
##  Copyright (C) 2009 Carlos Garcia Campos <carlosgc@gnome.org>
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


# const
#   POPPLER_TYPE_ANNOT* = (popplerAnnotGetType())

# const
#   POPPLER_TYPE_ANNOT_MARKUP* = (popplerAnnotMarkupGetType())

# const
#   POPPLER_TYPE_ANNOT_TEXT* = (popplerAnnotTextGetType())

# const
#   POPPLER_TYPE_ANNOT_TEXT_MARKUP* = (popplerAnnotTextMarkupGetType())

# const
#   POPPLER_TYPE_ANNOT_FREE_TEXT* = (popplerAnnotFreeTextGetType())

# const
#   POPPLER_TYPE_ANNOT_FILE_ATTACHMENT* = (popplerAnnotFileAttachmentGetType())

# const
#   POPPLER_TYPE_ANNOT_MOVIE* = (popplerAnnotMovieGetType())

# const
#   POPPLER_TYPE_ANNOT_LINE* = (popplerAnnotLineGetType())

# const
#   POPPLER_TYPE_ANNOT_SCREEN* = (popplerAnnotScreenGetType())

# const
#   POPPLER_TYPE_ANNOT_CALLOUT_LINE* = (popplerAnnotCalloutLineGetType())
#   POPPLER_TYPE_ANNOT_CIRCLE* = (popplerAnnotCircleGetType())


# const
#   POPPLER_TYPE_ANNOT_STAMP* = (popplerAnnotStampGetType())

template poppler_Annot*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Annot, popplerAnnot))

template poppler_Is_Annot*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Annot))



template poppler_Annot_Markup*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Annot_Markup, popplerAnnotMarkup))

template poppler_Is_Annot_Markup*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Annot_Markup))



template poppler_Annot_Text*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Annot_Text, popplerAnnotText))

template poppler_Is_Annot_Text*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Annot_Text))



template poppler_Annot_Text_Markup*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Annot_Text_Markup,
                              popplerAnnotTextMarkup))

template poppler_Is_Annot_Text_Markup*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Annot_Text_Markup))



template poppler_Annot_Free_Text*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Annot_Free_Text,
                              popplerAnnotFreeText))

template poppler_Is_Annot_Free_Text*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Annot_Free_Text))



template poppler_Annot_File_Attachment*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Annot_Markup,
                              popplerAnnotFileAttachment))

template poppler_Is_Annot_File_Attachment*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Annot_File_Attachment))



template poppler_Annot_Movie*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Annot_Movie, popplerAnnotMovie))

template poppler_Is_Annot_Movie*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Annot_Movie))



template poppler_Annot_Screen*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Annot_Screen, popplerAnnotScreen))

template poppler_Is_Annot_Screen*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Annot_Screen))



template poppler_Annot_Line*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Annot_Line, popplerAnnotLine))

template poppler_Is_Annot_Line*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Annot_Line))



template poppler_Annot_Circle*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Annot_Circle, popplerAnnotCircle))

template poppler_Is_Annot_Circle*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Annot_Circle))

# const
#   POPPLER_TYPE_ANNOT_SQUARE* = (popplerAnnotSquareGetType())

template poppler_Annot_Square*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Annot_Square, popplerAnnotSquare))

template poppler_Is_Annot_Square*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Annot_Square))


template poppler_Annot_Stamp*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Annot_Stamp, popplerAnnotStamp))

template poppler_Is_Annot_Stamp*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Annot_Stamp))

type                          ## < flags >
  PopplerAnnotType* {.size: sizeof(cint).} = enum
    POPPLER_ANNOT_UNKNOWN, POPPLER_ANNOT_TEXT, POPPLER_ANNOT_LINK,
    POPPLER_ANNOT_FREE_TEXT, POPPLER_ANNOT_LINE, POPPLER_ANNOT_SQUARE,
    POPPLER_ANNOT_CIRCLE, POPPLER_ANNOT_POLYGON, POPPLER_ANNOT_POLY_LINE,
    POPPLER_ANNOT_HIGHLIGHT, POPPLER_ANNOT_UNDERLINE, POPPLER_ANNOT_SQUIGGLY,
    POPPLER_ANNOT_STRIKE_OUT, POPPLER_ANNOT_STAMP, POPPLER_ANNOT_CARET,
    POPPLER_ANNOT_INK, POPPLER_ANNOT_POPUP, POPPLER_ANNOT_FILE_ATTACHMENT,
    POPPLER_ANNOT_SOUND, POPPLER_ANNOT_MOVIE, POPPLER_ANNOT_WIDGET,
    POPPLER_ANNOT_SCREEN, POPPLER_ANNOT_PRINTER_MARK, POPPLER_ANNOT_TRAP_NET,
    POPPLER_ANNOT_WATERMARK, POPPLER_ANNOT_3D
  PopplerAnnotFlag* {.size: sizeof(cint).} = enum
    POPPLER_ANNOT_FLAG_UNKNOWN = 0, POPPLER_ANNOT_FLAG_INVISIBLE = 1 shl 0,
    POPPLER_ANNOT_FLAG_HIDDEN = 1 shl 1, POPPLER_ANNOT_FLAG_PRINT = 1 shl 2,
    POPPLER_ANNOT_FLAG_NO_ZOOM = 1 shl 3, POPPLER_ANNOT_FLAG_NO_ROTATE = 1 shl 4,
    POPPLER_ANNOT_FLAG_NO_VIEW = 1 shl 5, POPPLER_ANNOT_FLAG_READ_ONLY = 1 shl 6,
    POPPLER_ANNOT_FLAG_LOCKED = 1 shl 7, POPPLER_ANNOT_FLAG_TOGGLE_NO_VIEW = 1 shl 8,
    POPPLER_ANNOT_FLAG_LOCKED_CONTENTS = 1 shl 9
  PopplerAnnotMarkupReplyType* {.size: sizeof(cint).} = enum
    POPPLER_ANNOT_MARKUP_REPLY_TYPE_R, POPPLER_ANNOT_MARKUP_REPLY_TYPE_GROUP
  PopplerAnnotExternalDataType* {.size: sizeof(cint).} = enum
    POPPLER_ANNOT_EXTERNAL_DATA_MARKUP_3D,
    POPPLER_ANNOT_EXTERNAL_DATA_MARKUP_UNKNOWN


proc popplerAnnotGetType*(): GType {.cdecl, importc: "poppler_annot_get_type",
                                  header: "poppler-annot.h".}
proc popplerAnnotGetAnnotType*(popplerAnnot: ptr PopplerAnnot): PopplerAnnotType {.
    cdecl, importc: "poppler_annot_get_annot_type", header: "poppler-annot.h".}
proc popplerAnnotGetContents*(popplerAnnot: ptr PopplerAnnot): ptr Gchar {.cdecl,
    importc: "poppler_annot_get_contents", header: "poppler-annot.h".}
proc popplerAnnotSetContents*(popplerAnnot: ptr PopplerAnnot; contents: ptr Gchar) {.
    cdecl, importc: "poppler_annot_set_contents", header: "poppler-annot.h".}
proc popplerAnnotGetName*(popplerAnnot: ptr PopplerAnnot): ptr Gchar {.cdecl,
    importc: "poppler_annot_get_name", header: "poppler-annot.h".}
proc popplerAnnotGetModified*(popplerAnnot: ptr PopplerAnnot): ptr Gchar {.cdecl,
    importc: "poppler_annot_get_modified", header: "poppler-annot.h".}
proc popplerAnnotGetFlags*(popplerAnnot: ptr PopplerAnnot): PopplerAnnotFlag {.cdecl,
    importc: "poppler_annot_get_flags", header: "poppler-annot.h".}
proc popplerAnnotSetFlags*(popplerAnnot: ptr PopplerAnnot; flags: PopplerAnnotFlag) {.
    cdecl, importc: "poppler_annot_set_flags", header: "poppler-annot.h".}
proc popplerAnnotGetColor*(popplerAnnot: ptr PopplerAnnot): ptr PopplerColor {.cdecl,
    importc: "poppler_annot_get_color", header: "poppler-annot.h".}
proc popplerAnnotSetColor*(popplerAnnot: ptr PopplerAnnot;
                          popplerColor: ptr PopplerColor) {.cdecl,
    importc: "poppler_annot_set_color", header: "poppler-annot.h".}
proc popplerAnnotGetPageIndex*(popplerAnnot: ptr PopplerAnnot): Gint {.cdecl,
    importc: "poppler_annot_get_page_index", header: "poppler-annot.h".}
proc popplerAnnotGetRectangle*(popplerAnnot: ptr PopplerAnnot;
                              popplerRect: ptr PopplerRectangle) {.cdecl,
    importc: "poppler_annot_get_rectangle", header: "poppler-annot.h".}
proc popplerAnnotSetRectangle*(popplerAnnot: ptr PopplerAnnot;
                              popplerRect: ptr PopplerRectangle) {.cdecl,
    importc: "poppler_annot_set_rectangle", header: "poppler-annot.h".}
##  PopplerAnnotMarkup

proc popplerAnnotMarkupGetType*(): GType {.cdecl, importc: "poppler_annot_markup_get_type",
                                        header: "poppler-annot.h".}
proc popplerAnnotMarkupGetLabel*(popplerAnnot: ptr PopplerAnnotMarkup): ptr Gchar {.
    cdecl, importc: "poppler_annot_markup_get_label", header: "poppler-annot.h".}
proc popplerAnnotMarkupSetLabel*(popplerAnnot: ptr PopplerAnnotMarkup;
                                label: ptr Gchar) {.cdecl,
    importc: "poppler_annot_markup_set_label", header: "poppler-annot.h".}
proc popplerAnnotMarkupHasPopup*(popplerAnnot: ptr PopplerAnnotMarkup): Gboolean {.
    cdecl, importc: "poppler_annot_markup_has_popup", header: "poppler-annot.h".}
proc popplerAnnotMarkupSetPopup*(popplerAnnot: ptr PopplerAnnotMarkup;
                                popupRect: ptr PopplerRectangle) {.cdecl,
    importc: "poppler_annot_markup_set_popup", header: "poppler-annot.h".}
proc popplerAnnotMarkupGetPopupIsOpen*(popplerAnnot: ptr PopplerAnnotMarkup): Gboolean {.
    cdecl, importc: "poppler_annot_markup_get_popup_is_open",
    header: "poppler-annot.h".}
proc popplerAnnotMarkupSetPopupIsOpen*(popplerAnnot: ptr PopplerAnnotMarkup;
                                      isOpen: Gboolean) {.cdecl,
    importc: "poppler_annot_markup_set_popup_is_open", header: "poppler-annot.h".}
proc popplerAnnotMarkupGetPopupRectangle*(popplerAnnot: ptr PopplerAnnotMarkup;
    popplerRect: ptr PopplerRectangle): Gboolean {.cdecl,
    importc: "poppler_annot_markup_get_popup_rectangle", header: "poppler-annot.h".}
proc popplerAnnotMarkupSetPopupRectangle*(popplerAnnot: ptr PopplerAnnotMarkup;
    popplerRect: ptr PopplerRectangle) {.cdecl, importc: "poppler_annot_markup_set_popup_rectangle",
                                      header: "poppler-annot.h".}
proc popplerAnnotMarkupGetOpacity*(popplerAnnot: ptr PopplerAnnotMarkup): Gdouble {.
    cdecl, importc: "poppler_annot_markup_get_opacity", header: "poppler-annot.h".}
proc popplerAnnotMarkupSetOpacity*(popplerAnnot: ptr PopplerAnnotMarkup;
                                  opacity: Gdouble) {.cdecl,
    importc: "poppler_annot_markup_set_opacity", header: "poppler-annot.h".}
proc popplerAnnotMarkupGetDate*(popplerAnnot: ptr PopplerAnnotMarkup): ptr GDate {.
    cdecl, importc: "poppler_annot_markup_get_date", header: "poppler-annot.h".}
proc popplerAnnotMarkupGetSubject*(popplerAnnot: ptr PopplerAnnotMarkup): ptr Gchar {.
    cdecl, importc: "poppler_annot_markup_get_subject", header: "poppler-annot.h".}
proc popplerAnnotMarkupGetReplyTo*(popplerAnnot: ptr PopplerAnnotMarkup): PopplerAnnotMarkupReplyType {.
    cdecl, importc: "poppler_annot_markup_get_reply_to", header: "poppler-annot.h".}
proc popplerAnnotMarkupGetExternalData*(popplerAnnot: ptr PopplerAnnotMarkup): PopplerAnnotExternalDataType {.
    cdecl, importc: "poppler_annot_markup_get_external_data",
    header: "poppler-annot.h".}
##  PopplerAnnotText

proc popplerAnnotTextGetType*(): GType {.cdecl,
                                      importc: "poppler_annot_text_get_type",
                                      header: "poppler-annot.h".}
proc popplerAnnotTextNew*(doc: ptr PopplerDocument; rect: ptr PopplerRectangle): ptr PopplerAnnot {.
    cdecl, importc: "poppler_annot_text_new", header: "poppler-annot.h".}
proc popplerAnnotTextGetIsOpen*(popplerAnnot: ptr PopplerAnnotText): Gboolean {.
    cdecl, importc: "poppler_annot_text_get_is_open", header: "poppler-annot.h".}
proc popplerAnnotTextSetIsOpen*(popplerAnnot: ptr PopplerAnnotText; isOpen: Gboolean) {.
    cdecl, importc: "poppler_annot_text_set_is_open", header: "poppler-annot.h".}
proc popplerAnnotTextGetIcon*(popplerAnnot: ptr PopplerAnnotText): ptr Gchar {.cdecl,
    importc: "poppler_annot_text_get_icon", header: "poppler-annot.h".}
proc popplerAnnotTextSetIcon*(popplerAnnot: ptr PopplerAnnotText; icon: ptr Gchar) {.
    cdecl, importc: "poppler_annot_text_set_icon", header: "poppler-annot.h".}
proc popplerAnnotTextGetState*(popplerAnnot: ptr PopplerAnnotText): PopplerAnnotTextState {.
    cdecl, importc: "poppler_annot_text_get_state", header: "poppler-annot.h".}
##  PopplerAnnotTextMarkup

proc popplerAnnotTextMarkupGetType*(): GType {.cdecl,
    importc: "poppler_annot_text_markup_get_type", header: "poppler-annot.h".}
proc popplerAnnotTextMarkupNewHighlight*(doc: ptr PopplerDocument;
                                        rect: ptr PopplerRectangle;
                                        quadrilaterals: ptr GArray): ptr PopplerAnnot {.
    cdecl, importc: "poppler_annot_text_markup_new_highlight",
    header: "poppler-annot.h".}
proc popplerAnnotTextMarkupNewSquiggly*(doc: ptr PopplerDocument;
                                       rect: ptr PopplerRectangle;
                                       quadrilaterals: ptr GArray): ptr PopplerAnnot {.
    cdecl, importc: "poppler_annot_text_markup_new_squiggly",
    header: "poppler-annot.h".}
proc popplerAnnotTextMarkupNewStrikeout*(doc: ptr PopplerDocument;
                                        rect: ptr PopplerRectangle;
                                        quadrilaterals: ptr GArray): ptr PopplerAnnot {.
    cdecl, importc: "poppler_annot_text_markup_new_strikeout",
    header: "poppler-annot.h".}
proc popplerAnnotTextMarkupNewUnderline*(doc: ptr PopplerDocument;
                                        rect: ptr PopplerRectangle;
                                        quadrilaterals: ptr GArray): ptr PopplerAnnot {.
    cdecl, importc: "poppler_annot_text_markup_new_underline",
    header: "poppler-annot.h".}
proc popplerAnnotTextMarkupSetQuadrilaterals*(
    popplerAnnot: ptr PopplerAnnotTextMarkup; quadrilaterals: ptr GArray) {.cdecl,
    importc: "poppler_annot_text_markup_set_quadrilaterals",
    header: "poppler-annot.h".}
proc popplerAnnotTextMarkupGetQuadrilaterals*(
    popplerAnnot: ptr PopplerAnnotTextMarkup): ptr GArray {.cdecl,
    importc: "poppler_annot_text_markup_get_quadrilaterals",
    header: "poppler-annot.h".}
##  PopplerAnnotFreeText

proc popplerAnnotFreeTextGetType*(): GType {.cdecl,
    importc: "poppler_annot_free_text_get_type", header: "poppler-annot.h".}
proc popplerAnnotFreeTextGetQuadding*(popplerAnnot: ptr PopplerAnnotFreeText): PopplerAnnotFreeTextQuadding {.
    cdecl, importc: "poppler_annot_free_text_get_quadding",
    header: "poppler-annot.h".}
proc popplerAnnotFreeTextGetCalloutLine*(popplerAnnot: ptr PopplerAnnotFreeText): ptr PopplerAnnotCalloutLine {.
    cdecl, importc: "poppler_annot_free_text_get_callout_line",
    header: "poppler-annot.h".}
##  PopplerAnnotFileAttachment

proc popplerAnnotFileAttachmentGetType*(): GType {.cdecl,
    importc: "poppler_annot_file_attachment_get_type", header: "poppler-annot.h".}
proc popplerAnnotFileAttachmentGetAttachment*(
    popplerAnnot: ptr PopplerAnnotFileAttachment): ptr PopplerAttachment {.cdecl,
    importc: "poppler_annot_file_attachment_get_attachment",
    header: "poppler-annot.h".}
proc popplerAnnotFileAttachmentGetName*(popplerAnnot: ptr PopplerAnnotFileAttachment): ptr Gchar {.
    cdecl, importc: "poppler_annot_file_attachment_get_name",
    header: "poppler-annot.h".}
##  PopplerAnnotMovie

proc popplerAnnotMovieGetType*(): GType {.cdecl,
                                       importc: "poppler_annot_movie_get_type",
                                       header: "poppler-annot.h".}
proc popplerAnnotMovieGetTitle*(popplerAnnot: ptr PopplerAnnotMovie): ptr Gchar {.
    cdecl, importc: "poppler_annot_movie_get_title", header: "poppler-annot.h".}
proc popplerAnnotMovieGetMovie*(popplerAnnot: ptr PopplerAnnotMovie): ptr PopplerMovie {.
    cdecl, importc: "poppler_annot_movie_get_movie", header: "poppler-annot.h".}
##  PopplerAnnotScreen

proc popplerAnnotScreenGetType*(): GType {.cdecl, importc: "poppler_annot_screen_get_type",
                                        header: "poppler-annot.h".}
proc popplerAnnotScreenGetAction*(popplerAnnot: ptr PopplerAnnotScreen): ptr PopplerAction {.
    cdecl, importc: "poppler_annot_screen_get_action", header: "poppler-annot.h".}
##  PopplerAnnotLine

proc popplerAnnotLineGetType*(): GType {.cdecl,
                                      importc: "poppler_annot_line_get_type",
                                      header: "poppler-annot.h".}
proc popplerAnnotLineNew*(doc: ptr PopplerDocument; rect: ptr PopplerRectangle;
                         start: ptr PopplerPoint; `end`: ptr PopplerPoint): ptr PopplerAnnot {.
    cdecl, importc: "poppler_annot_line_new", header: "poppler-annot.h".}
proc popplerAnnotLineSetVertices*(popplerAnnot: ptr PopplerAnnotLine;
                                 start: ptr PopplerPoint; `end`: ptr PopplerPoint) {.
    cdecl, importc: "poppler_annot_line_set_vertices", header: "poppler-annot.h".}
##  PopplerAnnotCalloutLine

proc popplerAnnotCalloutLineGetType*(): GType {.cdecl,
    importc: "poppler_annot_callout_line_get_type", header: "poppler-annot.h".}
proc popplerAnnotCalloutLineNew*(): ptr PopplerAnnotCalloutLine {.cdecl,
    importc: "poppler_annot_callout_line_new", header: "poppler-annot.h".}
proc popplerAnnotCalloutLineCopy*(callout: ptr PopplerAnnotCalloutLine): ptr PopplerAnnotCalloutLine {.
    cdecl, importc: "poppler_annot_callout_line_copy", header: "poppler-annot.h".}
proc popplerAnnotCalloutLineFree*(callout: ptr PopplerAnnotCalloutLine) {.cdecl,
    importc: "poppler_annot_callout_line_free", header: "poppler-annot.h".}
##  PopplerAnnotCircle

proc popplerAnnotCircleGetType*(): GType {.cdecl, importc: "poppler_annot_circle_get_type",
                                        header: "poppler-annot.h".}
proc popplerAnnotCircleNew*(doc: ptr PopplerDocument; rect: ptr PopplerRectangle): ptr PopplerAnnot {.
    cdecl, importc: "poppler_annot_circle_new", header: "poppler-annot.h".}
proc popplerAnnotCircleSetInteriorColor*(popplerAnnot: ptr PopplerAnnotCircle;
                                        popplerColor: ptr PopplerColor) {.cdecl,
    importc: "poppler_annot_circle_set_interior_color", header: "poppler-annot.h".}
proc popplerAnnotCircleGetInteriorColor*(popplerAnnot: ptr PopplerAnnotCircle): ptr PopplerColor {.
    cdecl, importc: "poppler_annot_circle_get_interior_color",
    header: "poppler-annot.h".}
##  PopplerAnnotGeometry

proc popplerAnnotSquareGetType*(): GType {.cdecl, importc: "poppler_annot_square_get_type",
                                        header: "poppler-annot.h".}
proc popplerAnnotSquareNew*(doc: ptr PopplerDocument; rect: ptr PopplerRectangle): ptr PopplerAnnot {.
    cdecl, importc: "poppler_annot_square_new", header: "poppler-annot.h".}
proc popplerAnnotSquareSetInteriorColor*(popplerAnnot: ptr PopplerAnnotSquare;
                                        popplerColor: ptr PopplerColor) {.cdecl,
    importc: "poppler_annot_square_set_interior_color", header: "poppler-annot.h".}
proc popplerAnnotSquareGetInteriorColor*(popplerAnnot: ptr PopplerAnnotSquare): ptr PopplerColor {.
    cdecl, importc: "poppler_annot_square_get_interior_color",
    header: "poppler-annot.h".}
##  PopplerAnnotStamp

proc popplerAnnotStampGetType*(): GType {.cdecl,
                                       importc: "poppler_annot_stamp_get_type",
                                       header: "poppler-annot.h".}
proc popplerAnnotStampNew*(doc: ptr PopplerDocument; rect: ptr PopplerRectangle): ptr PopplerAnnot {.
    cdecl, importc: "poppler_annot_stamp_new", header: "poppler-annot.h".}
proc popplerAnnotStampGetIcon*(popplerAnnot: ptr PopplerAnnotStamp): PopplerAnnotStampIcon {.
    cdecl, importc: "poppler_annot_stamp_get_icon", header: "poppler-annot.h".}
proc popplerAnnotStampSetIcon*(popplerAnnot: ptr PopplerAnnotStamp;
                              icon: PopplerAnnotStampIcon) {.cdecl,
    importc: "poppler_annot_stamp_set_icon", header: "poppler-annot.h".}
proc popplerAnnotStampSetCustomImage*(popplerAnnot: ptr PopplerAnnotStamp;
                                     image: ptr CairoSurfaceT;
                                     error: ptr ptr GError): Gboolean {.cdecl,
    importc: "poppler_annot_stamp_set_custom_image", header: "poppler-annot.h".}
