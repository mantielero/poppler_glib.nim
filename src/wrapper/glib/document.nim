import glib_types

##  poppler-document.h: glib interface to poppler
##  Copyright (C) 2004, Red Hat, Inc.
##
##  Copyright (C) 2016 Jakub Alba <jakubalba@gmail.com>
##  Copyright (C) 2018, 2019, 2021, 2022 Marek Kasik <mkasik@redhat.com>
##  Copyright (C) 2019 Masamichi Hosoda <trueroad@trueroad.jp>
##  Copyright (C) 2021 André Guerreiro <aguerreiro1985@gmail.com>
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
#   POPPLER_TYPE_DOCUMENT* = (popplerDocumentGetType())

template poppler_Document*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Document, popplerDocument))

template poppler_Is_Document*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Document))

## *
##  PopplerPageLayout:
##  @POPPLER_PAGE_LAYOUT_UNSET: no specific layout set
##  @POPPLER_PAGE_LAYOUT_SINGLE_PAGE: one page at a time
##  @POPPLER_PAGE_LAYOUT_ONE_COLUMN: pages in one column
##  @POPPLER_PAGE_LAYOUT_TWO_COLUMN_LEFT: pages in two columns with odd numbered pages on the left
##  @POPPLER_PAGE_LAYOUT_TWO_COLUMN_RIGHT: pages in two columns with odd numbered pages on the right
##  @POPPLER_PAGE_LAYOUT_TWO_PAGE_LEFT: two pages at a time with odd numbered pages on the left
##  @POPPLER_PAGE_LAYOUT_TWO_PAGE_RIGHT: two pages at a time with odd numbered pages on the right
##
##  Page layout types
##










type                          ## < flags >
  PopplerViewerPreferences* {.size: sizeof(cint).} = enum
    POPPLER_VIEWER_PREFERENCES_UNSET = 0,
    POPPLER_VIEWER_PREFERENCES_HIDE_TOOLBAR = 1 shl 0,
    POPPLER_VIEWER_PREFERENCES_HIDE_MENUBAR = 1 shl 1,
    POPPLER_VIEWER_PREFERENCES_HIDE_WINDOWUI = 1 shl 2,
    POPPLER_VIEWER_PREFERENCES_FIT_WINDOW = 1 shl 3,
    POPPLER_VIEWER_PREFERENCES_CENTER_WINDOW = 1 shl 4,
    POPPLER_VIEWER_PREFERENCES_DISPLAY_DOC_TITLE = 1 shl 5,
    POPPLER_VIEWER_PREFERENCES_DIRECTION_RTL = 1 shl 6


## *
##  PopplerPrintScaling:
##  @POPPLER_PRINT_SCALING_APP_DEFAULT: application's default page scaling
##  @POPPLER_PRINT_SCALING_NONE: no page scaling
##
##  PrintScaling viewer preference
##
##  Since: 0.73
##







type                          ## < flags >
  PopplerPermissions* {.size: sizeof(cint).} = enum
    POPPLER_PERMISSIONS_OK_TO_PRINT = 1 shl 0,
    POPPLER_PERMISSIONS_OK_TO_MODIFY = 1 shl 1,
    POPPLER_PERMISSIONS_OK_TO_COPY = 1 shl 2,
    POPPLER_PERMISSIONS_OK_TO_ADD_NOTES = 1 shl 3,
    POPPLER_PERMISSIONS_OK_TO_FILL_FORM = 1 shl 4,
    POPPLER_PERMISSIONS_OK_TO_EXTRACT_CONTENTS = 1 shl 5,
    POPPLER_PERMISSIONS_OK_TO_ASSEMBLE = 1 shl 6,
    POPPLER_PERMISSIONS_OK_TO_PRINT_HIGH_RESOLUTION = 1 shl 7#,
    # FIXME 
    # POPPLER_PERMISSIONS_FULL = (poppler_Permissions_Ok_To_Print or
    #     poppler_Permissions_Ok_To_Modify or poppler_Permissions_Ok_To_Copy or
    #     poppler_Permissions_Ok_To_Add_Notes or
    #     poppler_Permissions_Ok_To_Fill_Form or
    #     poppler_Permissions_Ok_To_Extract_Contents or
    #     poppler_Permissions_Ok_To_Assemble or
    #     poppler_Permissions_Ok_To_Print_High_Resolution)


##  clang-format on
## *
##  PopplerPDFSubtype:
##  @POPPLER_PDF_SUBTYPE_UNSET: Null
##  @POPPLER_PDF_SUBTYPE_PDF_A: ISO 19005 - Document management -- Electronic document file format for long-term preservation (PDF/A)
##  @POPPLER_PDF_SUBTYPE_PDF_E: ISO 24517 - Document management -- Engineering document format using PDF (PDF/E)
##  @POPPLER_PDF_SUBTYPE_PDF_UA: ISO 14289 - Document management applications -- Electronic document file format enhancement for accessibility (PDF/UA)
##  @POPPLER_PDF_SUBTYPE_PDF_VT: ISO 16612 - Graphic technology -- Variable data exchange (PDF/VT)
##  @POPPLER_PDF_SUBTYPE_PDF_X: ISO 15930 - Graphic technology -- Prepress digital data exchange (PDF/X)
##  @POPPLER_PDF_SUBTYPE_NONE: Not compliant with the above standards
##
##  PDF Subtype
##
##  Since: 0.70
##









proc popplerDocumentGetType*(): GType {.cdecl, importc: "poppler_document_get_type",
                                     header: "poppler-document.h".}
proc popplerDocumentNewFromFile*(uri: cstring; password: cstring;
                                error: ptr ptr GError): ptr PopplerDocument {.cdecl,
    importc: "poppler_document_new_from_file", header: "poppler-document.h".}
proc popplerDocumentNewFromData*(data: cstring; length: cint; password: cstring;
                                error: ptr ptr GError): ptr PopplerDocument {.cdecl,
    importc: "poppler_document_new_from_data", header: "poppler-document.h".}
proc popplerDocumentNewFromBytes*(bytes: ptr GBytes; password: cstring;
                                 error: ptr ptr GError): ptr PopplerDocument {.cdecl,
    importc: "poppler_document_new_from_bytes", header: "poppler-document.h".}
proc popplerDocumentNewFromStream*(stream: ptr GInputStream; length: Goffset;
                                  password: cstring;
                                  cancellable: ptr GCancellable;
                                  error: ptr ptr GError): ptr PopplerDocument {.cdecl,
    importc: "poppler_document_new_from_stream", header: "poppler-document.h".}
proc popplerDocumentNewFromGfile*(file: ptr GFile; password: cstring;
                                 cancellable: ptr GCancellable;
                                 error: ptr ptr GError): ptr PopplerDocument {.cdecl,
    importc: "poppler_document_new_from_gfile", header: "poppler-document.h".}
when not defined(G_OS_WIN32):
  proc popplerDocumentNewFromFd*(fd: cint; password: cstring; error: ptr ptr GError): ptr PopplerDocument {.
      cdecl, importc: "poppler_document_new_from_fd", header: "poppler-document.h".}
proc popplerDocumentSave*(document: ptr PopplerDocument; uri: cstring;
                         error: ptr ptr GError): Gboolean {.cdecl,
    importc: "poppler_document_save", header: "poppler-document.h".}
proc popplerDocumentSaveACopy*(document: ptr PopplerDocument; uri: cstring;
                              error: ptr ptr GError): Gboolean {.cdecl,
    importc: "poppler_document_save_a_copy", header: "poppler-document.h".}
when not defined(G_OS_WIN32):
  proc popplerDocumentSaveToFd*(document: ptr PopplerDocument; fd: cint;
                               includeChanges: Gboolean; error: ptr ptr GError): Gboolean {.
      cdecl, importc: "poppler_document_save_to_fd", header: "poppler-document.h".}
proc popplerDocumentGetId*(document: ptr PopplerDocument;
                          permanentId: ptr ptr Gchar; updateId: ptr ptr Gchar): Gboolean {.
    cdecl, importc: "poppler_document_get_id", header: "poppler-document.h".}
proc popplerDocumentGetNPages*(document: ptr PopplerDocument): cint {.cdecl,
    importc: "poppler_document_get_n_pages", header: "poppler-document.h".}
proc popplerDocumentGetPage*(document: ptr PopplerDocument; index: cint): ptr PopplerPage {.
    cdecl, importc: "poppler_document_get_page", header: "poppler-document.h".}
proc popplerDocumentGetPageByLabel*(document: ptr PopplerDocument; label: cstring): ptr PopplerPage {.
    cdecl, importc: "poppler_document_get_page_by_label",
    header: "poppler-document.h".}
proc popplerDocumentGetPdfVersionString*(document: ptr PopplerDocument): ptr Gchar {.
    cdecl, importc: "poppler_document_get_pdf_version_string",
    header: "poppler-document.h".}
proc popplerDocumentGetPdfVersion*(document: ptr PopplerDocument;
                                  majorVersion: ptr Guint; minorVersion: ptr Guint) {.
    cdecl, importc: "poppler_document_get_pdf_version",
    header: "poppler-document.h".}
proc popplerDocumentGetTitle*(document: ptr PopplerDocument): ptr Gchar {.cdecl,
    importc: "poppler_document_get_title", header: "poppler-document.h".}
proc popplerDocumentSetTitle*(document: ptr PopplerDocument; title: ptr Gchar) {.cdecl,
    importc: "poppler_document_set_title", header: "poppler-document.h".}
proc popplerDocumentGetAuthor*(document: ptr PopplerDocument): ptr Gchar {.cdecl,
    importc: "poppler_document_get_author", header: "poppler-document.h".}
proc popplerDocumentSetAuthor*(document: ptr PopplerDocument; author: ptr Gchar) {.
    cdecl, importc: "poppler_document_set_author", header: "poppler-document.h".}
proc popplerDocumentGetSubject*(document: ptr PopplerDocument): ptr Gchar {.cdecl,
    importc: "poppler_document_get_subject", header: "poppler-document.h".}
proc popplerDocumentSetSubject*(document: ptr PopplerDocument; subject: ptr Gchar) {.
    cdecl, importc: "poppler_document_set_subject", header: "poppler-document.h".}
proc popplerDocumentGetKeywords*(document: ptr PopplerDocument): ptr Gchar {.cdecl,
    importc: "poppler_document_get_keywords", header: "poppler-document.h".}
proc popplerDocumentSetKeywords*(document: ptr PopplerDocument; keywords: ptr Gchar) {.
    cdecl, importc: "poppler_document_set_keywords", header: "poppler-document.h".}
proc popplerDocumentGetCreator*(document: ptr PopplerDocument): ptr Gchar {.cdecl,
    importc: "poppler_document_get_creator", header: "poppler-document.h".}
proc popplerDocumentSetCreator*(document: ptr PopplerDocument; creator: ptr Gchar) {.
    cdecl, importc: "poppler_document_set_creator", header: "poppler-document.h".}
proc popplerDocumentGetProducer*(document: ptr PopplerDocument): ptr Gchar {.cdecl,
    importc: "poppler_document_get_producer", header: "poppler-document.h".}
proc popplerDocumentSetProducer*(document: ptr PopplerDocument; producer: ptr Gchar) {.
    cdecl, importc: "poppler_document_set_producer", header: "poppler-document.h".}
proc popplerDocumentGetCreationDate*(document: ptr PopplerDocument): TimeT {.cdecl,
    importc: "poppler_document_get_creation_date", header: "poppler-document.h".}
proc popplerDocumentSetCreationDate*(document: ptr PopplerDocument;
                                    creationDate: TimeT) {.cdecl,
    importc: "poppler_document_set_creation_date", header: "poppler-document.h".}
proc popplerDocumentGetCreationDateTime*(document: ptr PopplerDocument): ptr GDateTime {.
    cdecl, importc: "poppler_document_get_creation_date_time",
    header: "poppler-document.h".}
proc popplerDocumentSetCreationDateTime*(document: ptr PopplerDocument;
                                        creationDatetime: ptr GDateTime) {.cdecl,
    importc: "poppler_document_set_creation_date_time",
    header: "poppler-document.h".}
proc popplerDocumentGetModificationDate*(document: ptr PopplerDocument): TimeT {.
    cdecl, importc: "poppler_document_get_modification_date",
    header: "poppler-document.h".}
proc popplerDocumentSetModificationDate*(document: ptr PopplerDocument;
                                        modificationDate: TimeT) {.cdecl,
    importc: "poppler_document_set_modification_date",
    header: "poppler-document.h".}
proc popplerDocumentGetModificationDateTime*(document: ptr PopplerDocument): ptr GDateTime {.
    cdecl, importc: "poppler_document_get_modification_date_time",
    header: "poppler-document.h".}
proc popplerDocumentSetModificationDateTime*(document: ptr PopplerDocument;
    modificationDatetime: ptr GDateTime) {.cdecl, importc: "poppler_document_set_modification_date_time",
                                        header: "poppler-document.h".}
proc popplerDocumentIsLinearized*(document: ptr PopplerDocument): Gboolean {.cdecl,
    importc: "poppler_document_is_linearized", header: "poppler-document.h".}
proc popplerDocumentGetPageLayout*(document: ptr PopplerDocument): PopplerPageLayout {.
    cdecl, importc: "poppler_document_get_page_layout",
    header: "poppler-document.h".}
proc popplerDocumentGetPageMode*(document: ptr PopplerDocument): PopplerPageMode {.
    cdecl, importc: "poppler_document_get_page_mode", header: "poppler-document.h".}
proc popplerDocumentGetPermissions*(document: ptr PopplerDocument): PopplerPermissions {.
    cdecl, importc: "poppler_document_get_permissions",
    header: "poppler-document.h".}
proc popplerDocumentGetPdfSubtypeString*(document: ptr PopplerDocument): ptr Gchar {.
    cdecl, importc: "poppler_document_get_pdf_subtype_string",
    header: "poppler-document.h".}
proc popplerDocumentGetPdfSubtype*(document: ptr PopplerDocument): PopplerPDFSubtype {.
    cdecl, importc: "poppler_document_get_pdf_subtype",
    header: "poppler-document.h".}
proc popplerDocumentGetPdfPart*(document: ptr PopplerDocument): PopplerPDFPart {.
    cdecl, importc: "poppler_document_get_pdf_part", header: "poppler-document.h".}
proc popplerDocumentGetPdfConformance*(document: ptr PopplerDocument): PopplerPDFConformance {.
    cdecl, importc: "poppler_document_get_pdf_conformance",
    header: "poppler-document.h".}
proc popplerDocumentGetMetadata*(document: ptr PopplerDocument): ptr Gchar {.cdecl,
    importc: "poppler_document_get_metadata", header: "poppler-document.h".}
proc popplerDocumentGetPrintScaling*(document: ptr PopplerDocument): PopplerPrintScaling {.
    cdecl, importc: "poppler_document_get_print_scaling",
    header: "poppler-document.h".}
proc popplerDocumentGetPrintDuplex*(document: ptr PopplerDocument): PopplerPrintDuplex {.
    cdecl, importc: "poppler_document_get_print_duplex",
    header: "poppler-document.h".}
proc popplerDocumentGetPrintNCopies*(document: ptr PopplerDocument): Gint {.cdecl,
    importc: "poppler_document_get_print_n_copies", header: "poppler-document.h".}
proc popplerDocumentGetPrintPageRanges*(document: ptr PopplerDocument;
                                       nRanges: ptr cint): ptr PopplerPageRange {.
    cdecl, importc: "poppler_document_get_print_page_ranges",
    header: "poppler-document.h".}
##  Attachments

proc popplerDocumentGetNAttachments*(document: ptr PopplerDocument): Guint {.cdecl,
    importc: "poppler_document_get_n_attachments", header: "poppler-document.h".}
proc popplerDocumentHasAttachments*(document: ptr PopplerDocument): Gboolean {.cdecl,
    importc: "poppler_document_has_attachments", header: "poppler-document.h".}
proc popplerDocumentGetAttachments*(document: ptr PopplerDocument): ptr GList {.cdecl,
    importc: "poppler_document_get_attachments", header: "poppler-document.h".}
##  Links

proc popplerDocumentFindDest*(document: ptr PopplerDocument; linkName: ptr Gchar): ptr PopplerDest {.
    cdecl, importc: "poppler_document_find_dest", header: "poppler-document.h".}
proc popplerDocumentCreateDestsTree*(document: ptr PopplerDocument): ptr GTree {.
    cdecl, importc: "poppler_document_create_dests_tree",
    header: "poppler-document.h".}
##  Form

proc popplerDocumentGetFormField*(document: ptr PopplerDocument; id: Gint): ptr PopplerFormField {.
    cdecl, importc: "poppler_document_get_form_field", header: "poppler-document.h".}
proc popplerDocumentResetForm*(document: ptr PopplerDocument; fields: ptr GList;
                              excludeFields: Gboolean) {.cdecl,
    importc: "poppler_document_reset_form", header: "poppler-document.h".}
##  Javascript

proc popplerDocumentHasJavascript*(document: ptr PopplerDocument): Gboolean {.cdecl,
    importc: "poppler_document_has_javascript", header: "poppler-document.h".}
##  Signatures

proc popplerDocumentGetSignatureFields*(document: ptr PopplerDocument): ptr GList {.
    cdecl, importc: "poppler_document_get_signature_fields",
    header: "poppler-document.h".}
proc popplerDocumentGetNSignatures*(document: ptr PopplerDocument): Gint {.cdecl,
    importc: "poppler_document_get_n_signatures", header: "poppler-document.h".}
##  Interface for getting the Index of a poppler_document

# const
#   POPPLER_TYPE_INDEX_ITER* = (popplerIndexIterGetType())

proc popplerIndexIterGetType*(): GType {.cdecl,
                                      importc: "poppler_index_iter_get_type",
                                      header: "poppler-document.h".}
proc popplerIndexIterNew*(document: ptr PopplerDocument): ptr PopplerIndexIter {.
    cdecl, importc: "poppler_index_iter_new", header: "poppler-document.h".}
proc popplerIndexIterCopy*(iter: ptr PopplerIndexIter): ptr PopplerIndexIter {.cdecl,
    importc: "poppler_index_iter_copy", header: "poppler-document.h".}
proc popplerIndexIterFree*(iter: ptr PopplerIndexIter) {.cdecl,
    importc: "poppler_index_iter_free", header: "poppler-document.h".}
proc popplerIndexIterGetChild*(parent: ptr PopplerIndexIter): ptr PopplerIndexIter {.
    cdecl, importc: "poppler_index_iter_get_child", header: "poppler-document.h".}
proc popplerIndexIterIsOpen*(iter: ptr PopplerIndexIter): Gboolean {.cdecl,
    importc: "poppler_index_iter_is_open", header: "poppler-document.h".}
proc popplerIndexIterGetAction*(iter: ptr PopplerIndexIter): ptr PopplerAction {.
    cdecl, importc: "poppler_index_iter_get_action", header: "poppler-document.h".}
proc popplerIndexIterNext*(iter: ptr PopplerIndexIter): Gboolean {.cdecl,
    importc: "poppler_index_iter_next", header: "poppler-document.h".}
##  Interface for getting the Fonts of a poppler_document

# const
#   POPPLER_TYPE_FONT_INFO* = (popplerFontInfoGetType())

template poppler_Font_Info*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Font_Info, popplerFontInfo))

template poppler_Is_Font_Info*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Font_Info))

proc popplerFontInfoGetType*(): GType {.cdecl,
                                     importc: "poppler_font_info_get_type",
                                     header: "poppler-document.h".}
proc popplerFontInfoNew*(document: ptr PopplerDocument): ptr PopplerFontInfo {.cdecl,
    importc: "poppler_font_info_new", header: "poppler-document.h".}
proc popplerFontInfoScan*(fontInfo: ptr PopplerFontInfo; nPages: cint;
                         iter: ptr ptr PopplerFontsIter): Gboolean {.cdecl,
    importc: "poppler_font_info_scan", header: "poppler-document.h".}
proc popplerFontInfoFree*(fontInfo: ptr PopplerFontInfo) {.cdecl,
    importc: "poppler_font_info_free", header: "poppler-document.h".}
# const
#   POPPLER_TYPE_FONTS_ITER* = (popplerFontsIterGetType())

proc popplerFontsIterGetType*(): GType {.cdecl,
                                      importc: "poppler_fonts_iter_get_type",
                                      header: "poppler-document.h".}
proc popplerFontsIterCopy*(iter: ptr PopplerFontsIter): ptr PopplerFontsIter {.cdecl,
    importc: "poppler_fonts_iter_copy", header: "poppler-document.h".}
proc popplerFontsIterFree*(iter: ptr PopplerFontsIter) {.cdecl,
    importc: "poppler_fonts_iter_free", header: "poppler-document.h".}
proc popplerFontsIterGetName*(iter: ptr PopplerFontsIter): cstring {.cdecl,
    importc: "poppler_fonts_iter_get_name", header: "poppler-document.h".}
proc popplerFontsIterGetFullName*(iter: ptr PopplerFontsIter): cstring {.cdecl,
    importc: "poppler_fonts_iter_get_full_name", header: "poppler-document.h".}
proc popplerFontsIterGetSubstituteName*(iter: ptr PopplerFontsIter): cstring {.cdecl,
    importc: "poppler_fonts_iter_get_substitute_name",
    header: "poppler-document.h".}
proc popplerFontsIterGetFileName*(iter: ptr PopplerFontsIter): cstring {.cdecl,
    importc: "poppler_fonts_iter_get_file_name", header: "poppler-document.h".}
proc popplerFontsIterGetFontType*(iter: ptr PopplerFontsIter): PopplerFontType {.
    cdecl, importc: "poppler_fonts_iter_get_font_type",
    header: "poppler-document.h".}
proc popplerFontsIterGetEncoding*(iter: ptr PopplerFontsIter): cstring {.cdecl,
    importc: "poppler_fonts_iter_get_encoding", header: "poppler-document.h".}
proc popplerFontsIterIsEmbedded*(iter: ptr PopplerFontsIter): Gboolean {.cdecl,
    importc: "poppler_fonts_iter_is_embedded", header: "poppler-document.h".}
proc popplerFontsIterIsSubset*(iter: ptr PopplerFontsIter): Gboolean {.cdecl,
    importc: "poppler_fonts_iter_is_subset", header: "poppler-document.h".}
proc popplerFontsIterNext*(iter: ptr PopplerFontsIter): Gboolean {.cdecl,
    importc: "poppler_fonts_iter_next", header: "poppler-document.h".}
##  Interface for getting the Layers of a poppler_document

# const
#   POPPLER_TYPE_LAYERS_ITER* = (popplerLayersIterGetType())

proc popplerLayersIterGetType*(): GType {.cdecl,
                                       importc: "poppler_layers_iter_get_type",
                                       header: "poppler-document.h".}
proc popplerLayersIterNew*(document: ptr PopplerDocument): ptr PopplerLayersIter {.
    cdecl, importc: "poppler_layers_iter_new", header: "poppler-document.h".}
proc popplerLayersIterCopy*(iter: ptr PopplerLayersIter): ptr PopplerLayersIter {.
    cdecl, importc: "poppler_layers_iter_copy", header: "poppler-document.h".}
proc popplerLayersIterFree*(iter: ptr PopplerLayersIter) {.cdecl,
    importc: "poppler_layers_iter_free", header: "poppler-document.h".}
proc popplerLayersIterGetChild*(parent: ptr PopplerLayersIter): ptr PopplerLayersIter {.
    cdecl, importc: "poppler_layers_iter_get_child", header: "poppler-document.h".}
proc popplerLayersIterGetTitle*(iter: ptr PopplerLayersIter): ptr Gchar {.cdecl,
    importc: "poppler_layers_iter_get_title", header: "poppler-document.h".}
proc popplerLayersIterGetLayer*(iter: ptr PopplerLayersIter): ptr PopplerLayer {.
    cdecl, importc: "poppler_layers_iter_get_layer", header: "poppler-document.h".}
proc popplerLayersIterNext*(iter: ptr PopplerLayersIter): Gboolean {.cdecl,
    importc: "poppler_layers_iter_next", header: "poppler-document.h".}
##  Export to ps

# const
#   POPPLER_TYPE_PS_FILE* = (popplerPsFileGetType())

template poppler_Ps_File*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Ps_File, popplerPSFile))

template poppler_Is_Ps_File*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Ps_File))

proc popplerPsFileGetType*(): GType {.cdecl, importc: "poppler_ps_file_get_type",
                                   header: "poppler-document.h".}
proc popplerPsFileNew*(document: ptr PopplerDocument; filename: cstring;
                      firstPage: cint; nPages: cint): ptr PopplerPSFile {.cdecl,
    importc: "poppler_ps_file_new", header: "poppler-document.h".}
when not defined(G_OS_WIN32):
  proc popplerPsFileNewFd*(document: ptr PopplerDocument; fd: cint; firstPage: cint;
                          nPages: cint): ptr PopplerPSFile {.cdecl,
      importc: "poppler_ps_file_new_fd", header: "poppler-document.h".}
proc popplerPsFileSetPaperSize*(psFile: ptr PopplerPSFile; width: cdouble;
                               height: cdouble) {.cdecl,
    importc: "poppler_ps_file_set_paper_size", header: "poppler-document.h".}
proc popplerPsFileSetDuplex*(psFile: ptr PopplerPSFile; duplex: Gboolean) {.cdecl,
    importc: "poppler_ps_file_set_duplex", header: "poppler-document.h".}
proc popplerPsFileFree*(psFile: ptr PopplerPSFile) {.cdecl,
    importc: "poppler_ps_file_free", header: "poppler-document.h".}
## *
##  PopplerPageRange:
##  @start_page: first page in the range of pages
##  @end_page:   last page in the range of pages
##
##  A #PopplerPageRange is used to specify a range of pages.
##
##  Since: 0.80
##



