import glib_types

##  poppler-structure-element.h: glib interface to poppler
##
##  Copyright (C) 2013 Igalia S.L.
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
  POPPLER_TYPE_STRUCTURE_ELEMENT* = (popplerStructureElementGetType())

template poppler_Structure_Element*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Structure_Element,
                              popplerStructureElement))

template poppler_Is_Structure_Element*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Structure_Element))

## *
##  PopplerStructureElementKind:
##
















































proc popplerStructureElementGetType*(): GType {.cdecl,
    importc: "poppler_structure_element_get_type",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetKind*(popplerStructureElement: ptr PopplerStructureElement): PopplerStructureElementKind {.
    cdecl, importc: "poppler_structure_element_get_kind",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetPage*(popplerStructureElement: ptr PopplerStructureElement): Gint {.
    cdecl, importc: "poppler_structure_element_get_page",
    header: "poppler-structure-element.h".}
proc popplerStructureElementIsContent*(popplerStructureElement: ptr PopplerStructureElement): Gboolean {.
    cdecl, importc: "poppler_structure_element_is_content",
    header: "poppler-structure-element.h".}
proc popplerStructureElementIsInline*(popplerStructureElement: ptr PopplerStructureElement): Gboolean {.
    cdecl, importc: "poppler_structure_element_is_inline",
    header: "poppler-structure-element.h".}
proc popplerStructureElementIsBlock*(popplerStructureElement: ptr PopplerStructureElement): Gboolean {.
    cdecl, importc: "poppler_structure_element_is_block",
    header: "poppler-structure-element.h".}
proc popplerStructureElementIsGrouping*(popplerStructureElement: ptr PopplerStructureElement): Gboolean {.
    cdecl, importc: "poppler_structure_element_is_grouping",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetId*(popplerStructureElement: ptr PopplerStructureElement): ptr Gchar {.
    cdecl, importc: "poppler_structure_element_get_id",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetTitle*(popplerStructureElement: ptr PopplerStructureElement): ptr Gchar {.
    cdecl, importc: "poppler_structure_element_get_title",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetAbbreviation*(
    popplerStructureElement: ptr PopplerStructureElement): ptr Gchar {.cdecl,
    importc: "poppler_structure_element_get_abbreviation",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetLanguage*(popplerStructureElement: ptr PopplerStructureElement): ptr Gchar {.
    cdecl, importc: "poppler_structure_element_get_language",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetText*(popplerStructureElement: ptr PopplerStructureElement;
                                    flags: PopplerStructureGetTextFlags): ptr Gchar {.
    cdecl, importc: "poppler_structure_element_get_text",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetAltText*(popplerStructureElement: ptr PopplerStructureElement): ptr Gchar {.
    cdecl, importc: "poppler_structure_element_get_alt_text",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetActualText*(
    popplerStructureElement: ptr PopplerStructureElement): ptr Gchar {.cdecl,
    importc: "poppler_structure_element_get_actual_text",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetTextSpans*(
    popplerStructureElement: ptr PopplerStructureElement; nTextSpans: ptr Guint): ptr ptr PopplerTextSpan {.
    cdecl, importc: "poppler_structure_element_get_text_spans",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetPlacement*(
    popplerStructureElement: ptr PopplerStructureElement): PopplerStructurePlacement {.
    cdecl, importc: "poppler_structure_element_get_placement",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetWritingMode*(
    popplerStructureElement: ptr PopplerStructureElement): PopplerStructureWritingMode {.
    cdecl, importc: "poppler_structure_element_get_writing_mode",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetBackgroundColor*(
    popplerStructureElement: ptr PopplerStructureElement; color: ptr PopplerColor): Gboolean {.
    cdecl, importc: "poppler_structure_element_get_background_color",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetBorderColor*(
    popplerStructureElement: ptr PopplerStructureElement; colors: ptr PopplerColor): Gboolean {.
    cdecl, importc: "poppler_structure_element_get_border_color",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetBorderStyle*(
    popplerStructureElement: ptr PopplerStructureElement;
    borderStyles: ptr PopplerStructureBorderStyle) {.cdecl,
    importc: "poppler_structure_element_get_border_style",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetBorderThickness*(
    popplerStructureElement: ptr PopplerStructureElement;
    borderThicknesses: ptr Gdouble): Gboolean {.cdecl,
    importc: "poppler_structure_element_get_border_thickness",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetPadding*(popplerStructureElement: ptr PopplerStructureElement;
                                       paddings: ptr Gdouble) {.cdecl,
    importc: "poppler_structure_element_get_padding",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetColor*(popplerStructureElement: ptr PopplerStructureElement;
                                     color: ptr PopplerColor): Gboolean {.cdecl,
    importc: "poppler_structure_element_get_color",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetSpaceBefore*(
    popplerStructureElement: ptr PopplerStructureElement): Gdouble {.cdecl,
    importc: "poppler_structure_element_get_space_before",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetSpaceAfter*(
    popplerStructureElement: ptr PopplerStructureElement): Gdouble {.cdecl,
    importc: "poppler_structure_element_get_space_after",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetStartIndent*(
    popplerStructureElement: ptr PopplerStructureElement): Gdouble {.cdecl,
    importc: "poppler_structure_element_get_start_indent",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetEndIndent*(
    popplerStructureElement: ptr PopplerStructureElement): Gdouble {.cdecl,
    importc: "poppler_structure_element_get_end_indent",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetTextIndent*(
    popplerStructureElement: ptr PopplerStructureElement): Gdouble {.cdecl,
    importc: "poppler_structure_element_get_text_indent",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetTextAlign*(
    popplerStructureElement: ptr PopplerStructureElement): PopplerStructureTextAlign {.
    cdecl, importc: "poppler_structure_element_get_text_align",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetBoundingBox*(
    popplerStructureElement: ptr PopplerStructureElement;
    boundingBox: ptr PopplerRectangle): Gboolean {.cdecl,
    importc: "poppler_structure_element_get_bounding_box",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetWidth*(popplerStructureElement: ptr PopplerStructureElement): Gdouble {.
    cdecl, importc: "poppler_structure_element_get_width",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetHeight*(popplerStructureElement: ptr PopplerStructureElement): Gdouble {.
    cdecl, importc: "poppler_structure_element_get_height",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetBlockAlign*(
    popplerStructureElement: ptr PopplerStructureElement): PopplerStructureBlockAlign {.
    cdecl, importc: "poppler_structure_element_get_block_align",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetInlineAlign*(
    popplerStructureElement: ptr PopplerStructureElement): PopplerStructureInlineAlign {.
    cdecl, importc: "poppler_structure_element_get_inline_align",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetTableBorderStyle*(
    popplerStructureElement: ptr PopplerStructureElement;
    borderStyles: ptr PopplerStructureBorderStyle) {.cdecl,
    importc: "poppler_structure_element_get_table_border_style",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetTablePadding*(
    popplerStructureElement: ptr PopplerStructureElement; paddings: ptr Gdouble) {.
    cdecl, importc: "poppler_structure_element_get_table_padding",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetBaselineShift*(
    popplerStructureElement: ptr PopplerStructureElement): Gdouble {.cdecl,
    importc: "poppler_structure_element_get_baseline_shift",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetLineHeight*(
    popplerStructureElement: ptr PopplerStructureElement): Gdouble {.cdecl,
    importc: "poppler_structure_element_get_line_height",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetTextDecorationColor*(
    popplerStructureElement: ptr PopplerStructureElement; color: ptr PopplerColor): Gboolean {.
    cdecl, importc: "poppler_structure_element_get_text_decoration_color",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetTextDecorationThickness*(
    popplerStructureElement: ptr PopplerStructureElement): Gdouble {.cdecl,
    importc: "poppler_structure_element_get_text_decoration_thickness",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetTextDecorationType*(
    popplerStructureElement: ptr PopplerStructureElement): PopplerStructureTextDecoration {.
    cdecl, importc: "poppler_structure_element_get_text_decoration_type",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetRubyAlign*(
    popplerStructureElement: ptr PopplerStructureElement): PopplerStructureRubyAlign {.
    cdecl, importc: "poppler_structure_element_get_ruby_align",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetRubyPosition*(
    popplerStructureElement: ptr PopplerStructureElement): PopplerStructureRubyPosition {.
    cdecl, importc: "poppler_structure_element_get_ruby_position",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetGlyphOrientation*(
    popplerStructureElement: ptr PopplerStructureElement): PopplerStructureGlyphOrientation {.
    cdecl, importc: "poppler_structure_element_get_glyph_orientation",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetColumnCount*(
    popplerStructureElement: ptr PopplerStructureElement): Guint {.cdecl,
    importc: "poppler_structure_element_get_column_count",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetColumnGaps*(
    popplerStructureElement: ptr PopplerStructureElement; nValues: ptr Guint): ptr Gdouble {.
    cdecl, importc: "poppler_structure_element_get_column_gaps",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetColumnWidths*(
    popplerStructureElement: ptr PopplerStructureElement; nValues: ptr Guint): ptr Gdouble {.
    cdecl, importc: "poppler_structure_element_get_column_widths",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetListNumbering*(
    popplerStructureElement: ptr PopplerStructureElement): PopplerStructureListNumbering {.
    cdecl, importc: "poppler_structure_element_get_list_numbering",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetFormRole*(popplerStructureElement: ptr PopplerStructureElement): PopplerStructureFormRole {.
    cdecl, importc: "poppler_structure_element_get_form_role",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetFormState*(
    popplerStructureElement: ptr PopplerStructureElement): PopplerStructureFormState {.
    cdecl, importc: "poppler_structure_element_get_form_state",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetFormDescription*(
    popplerStructureElement: ptr PopplerStructureElement): ptr Gchar {.cdecl,
    importc: "poppler_structure_element_get_form_description",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetTableRowSpan*(
    popplerStructureElement: ptr PopplerStructureElement): Guint {.cdecl,
    importc: "poppler_structure_element_get_table_row_span",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetTableColumnSpan*(
    popplerStructureElement: ptr PopplerStructureElement): Guint {.cdecl,
    importc: "poppler_structure_element_get_table_column_span",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetTableHeaders*(
    popplerStructureElement: ptr PopplerStructureElement): ptr ptr Gchar {.cdecl,
    importc: "poppler_structure_element_get_table_headers",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetTableScope*(
    popplerStructureElement: ptr PopplerStructureElement): PopplerStructureTableScope {.
    cdecl, importc: "poppler_structure_element_get_table_scope",
    header: "poppler-structure-element.h".}
proc popplerStructureElementGetTableSummary*(
    popplerStructureElement: ptr PopplerStructureElement): ptr Gchar {.cdecl,
    importc: "poppler_structure_element_get_table_summary",
    header: "poppler-structure-element.h".}
const
  POPPLER_TYPE_STRUCTURE_ELEMENT_ITER* = (popplerStructureElementIterGetType())

proc popplerStructureElementIterGetType*(): GType {.cdecl,
    importc: "poppler_structure_element_iter_get_type",
    header: "poppler-structure-element.h".}
proc popplerStructureElementIterNew*(popplerDocument: ptr PopplerDocument): ptr PopplerStructureElementIter {.
    cdecl, importc: "poppler_structure_element_iter_new",
    header: "poppler-structure-element.h".}
proc popplerStructureElementIterGetChild*(parent: ptr PopplerStructureElementIter): ptr PopplerStructureElementIter {.
    cdecl, importc: "poppler_structure_element_iter_get_child",
    header: "poppler-structure-element.h".}
proc popplerStructureElementIterCopy*(iter: ptr PopplerStructureElementIter): ptr PopplerStructureElementIter {.
    cdecl, importc: "poppler_structure_element_iter_copy",
    header: "poppler-structure-element.h".}
proc popplerStructureElementIterGetElement*(iter: ptr PopplerStructureElementIter): ptr PopplerStructureElement {.
    cdecl, importc: "poppler_structure_element_iter_get_element",
    header: "poppler-structure-element.h".}
proc popplerStructureElementIterNext*(iter: ptr PopplerStructureElementIter): Gboolean {.
    cdecl, importc: "poppler_structure_element_iter_next",
    header: "poppler-structure-element.h".}
proc popplerStructureElementIterFree*(iter: ptr PopplerStructureElementIter) {.
    cdecl, importc: "poppler_structure_element_iter_free",
    header: "poppler-structure-element.h".}
const
  POPPLER_TYPE_TEXT_SPAN* = (popplerTextSpanGetType())

proc popplerTextSpanGetType*(): GType {.cdecl,
                                     importc: "poppler_text_span_get_type",
                                     header: "poppler-structure-element.h".}
proc popplerTextSpanCopy*(popplerTextSpan: ptr PopplerTextSpan): ptr PopplerTextSpan {.
    cdecl, importc: "poppler_text_span_copy", header: "poppler-structure-element.h".}
proc popplerTextSpanFree*(popplerTextSpan: ptr PopplerTextSpan) {.cdecl,
    importc: "poppler_text_span_free", header: "poppler-structure-element.h".}
proc popplerTextSpanIsFixedWidthFont*(popplerTextSpan: ptr PopplerTextSpan): Gboolean {.
    cdecl, importc: "poppler_text_span_is_fixed_width_font",
    header: "poppler-structure-element.h".}
proc popplerTextSpanIsSerifFont*(popplerTextSpan: ptr PopplerTextSpan): Gboolean {.
    cdecl, importc: "poppler_text_span_is_serif_font",
    header: "poppler-structure-element.h".}
proc popplerTextSpanIsBoldFont*(popplerTextSpan: ptr PopplerTextSpan): Gboolean {.
    cdecl, importc: "poppler_text_span_is_bold_font",
    header: "poppler-structure-element.h".}
proc popplerTextSpanGetColor*(popplerTextSpan: ptr PopplerTextSpan;
                             color: ptr PopplerColor) {.cdecl,
    importc: "poppler_text_span_get_color", header: "poppler-structure-element.h".}
proc popplerTextSpanGetText*(popplerTextSpan: ptr PopplerTextSpan): ptr Gchar {.cdecl,
    importc: "poppler_text_span_get_text", header: "poppler-structure-element.h".}
proc popplerTextSpanGetFontName*(popplerTextSpan: ptr PopplerTextSpan): ptr Gchar {.
    cdecl, importc: "poppler_text_span_get_font_name",
    header: "poppler-structure-element.h".}
