import glib_types

##  poppler.h: glib interface to poppler
##  Copyright (C) 2004, Red Hat, Inc.
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

# import
#   poppler-macros

proc popplerErrorQuark*(): GQuark {.cdecl, importc: "poppler_error_quark",
                                 header: "poppler.h".}
# const
#   POPPLER_ERROR* = popplerErrorQuark()

## *
##  PopplerError:
##  @POPPLER_ERROR_INVALID: Generic error when a document operation fails
##  @POPPLER_ERROR_ENCRYPTED: Document is encrypted
##  @POPPLER_ERROR_OPEN_FILE: File could not be opened for writing when saving document
##  @POPPLER_ERROR_BAD_CATALOG: Failed to read the document catalog
##  @POPPLER_ERROR_DAMAGED: Document is damaged
##
##  Error codes returned by #PopplerDocument
##
















type                          ## < flags >
  PopplerPrintFlags* {.size: sizeof(cint).} = enum
    POPPLER_PRINT_DOCUMENT = 0, 
    POPPLER_PRINT_MARKUP_ANNOTS = 1 shl 0,
    POPPLER_PRINT_STAMP_ANNOTS_ONLY = 1 shl 1,
    #POPPLER_PRINT_ALL = poppler_Print_Markup_Annots


## *
##  PopplerFindFlags:
##  @POPPLER_FIND_DEFAULT: use default search settings
##  @POPPLER_FIND_CASE_SENSITIVE: do case sensitive search
##  @POPPLER_FIND_BACKWARDS: search backwards
##  @POPPLER_FIND_WHOLE_WORDS_ONLY: search only whole words
##  @POPPLER_FIND_IGNORE_DIACRITICS: do diacritics insensitive search,
##  i.e. ignore accents, umlauts, diaeresis,etc. while matching. This
##  option will be ignored if the search term is not pure ascii. Since 0.73.
##  @POPPLER_FIND_MULTILINE: allows to match on text spanning from
##  end of a line to the next line. (Currently it won't match on text spanning
##  more than two lines.) Automatically ignores hyphen at end of line, and
##  allows whitespace in search term to match on newline char. Since: 21.05.0.
##
##  Flags using while searching text in a page
##
##  Since: 0.22
##

type                          ## < flags >
  PopplerFindFlags* {.size: sizeof(cint).} = enum
    POPPLER_FIND_DEFAULT = 0, 
    POPPLER_FIND_CASE_SENSITIVE = 1 shl 0,
    POPPLER_FIND_BACKWARDS = 1 shl 1, 
    POPPLER_FIND_WHOLE_WORDS_ONLY = 1 shl 2,
    POPPLER_FIND_IGNORE_DIACRITICS = 1 shl 3, 
    POPPLER_FIND_MULTILINE = 1 shl 4
  # PopplerDocument* = popplerDocument
  # PopplerIndexIter* = popplerIndexIter
  # PopplerFontsIter* = popplerFontsIter
  # PopplerLayersIter* = popplerLayersIter
  # PopplerPoint* = popplerPoint
  # PopplerRectangle* = popplerRectangle
  # PopplerTextAttributes* = popplerTextAttributes
  # PopplerColor* = popplerColor
  # PopplerLinkMapping* = popplerLinkMapping
  # PopplerPageTransition* = popplerPageTransition
  # PopplerImageMapping* = popplerImageMapping
  # PopplerFormFieldMapping* = popplerFormFieldMapping
  # PopplerAnnotMapping* = popplerAnnotMapping
  # PopplerPage* = popplerPage
  # PopplerFontInfo* = popplerFontInfo
  # PopplerLayer* = popplerLayer
  # PopplerPSFile* = popplerPSFile
  # PopplerAction* = popplerAction
  # PopplerDest* = popplerDest
  # PopplerActionLayer* = popplerActionLayer
  # PopplerFormField* = popplerFormField
  # PopplerAttachment* = popplerAttachment
  # PopplerMovie* = popplerMovie
  # PopplerMedia* = popplerMedia
  # PopplerAnnot* = popplerAnnot
  # PopplerAnnotMarkup* = popplerAnnotMarkup
  # PopplerAnnotText* = popplerAnnotText
  # PopplerAnnotTextMarkup* = popplerAnnotTextMarkup
  # PopplerAnnotFreeText* = popplerAnnotFreeText
  # PopplerAnnotFileAttachment* = popplerAnnotFileAttachment
  # PopplerAnnotMovie* = popplerAnnotMovie
  # PopplerAnnotScreen* = popplerAnnotScreen
  # PopplerAnnotCalloutLine* = popplerAnnotCalloutLine
  # PopplerAnnotLine* = popplerAnnotLine
  # PopplerAnnotCircle* = popplerAnnotCircle
  # PopplerAnnotSquare* = popplerAnnotSquare
  # PopplerQuadrilateral* = popplerQuadrilateral
  # PopplerStructureElement* = popplerStructureElement
  # PopplerStructureElementIter* = popplerStructureElementIter
  # PopplerTextSpan* = popplerTextSpan
  # PopplerPageRange* = popplerPageRange
  # PopplerSignatureInfo* = popplerSignatureInfo
  # PopplerAnnotStamp* = popplerAnnotStamp


## *
##  PopplerBackend:
##  @POPPLER_BACKEND_UNKNOWN: Unknown backend
##  @POPPLER_BACKEND_SPLASH: Splash backend
##  @POPPLER_BACKEND_CAIRO: Cairo backend
##
##  Backend codes returned by poppler_get_backend().
##



proc popplerGetBackend*(): PopplerBackend {.cdecl, importc: "poppler_get_backend",
    header: "poppler.h".}
proc popplerGetVersion*(): cstring {.cdecl, importc: "poppler_get_version",
                                  header: "poppler.h".}
# import
#   poppler-features, poppler-document, poppler-page, poppler-layer, poppler-action,
#   poppler-form-field, poppler-enums, poppler-attachment, poppler-annot,
#   poppler-date, poppler-movie, poppler-media, poppler-structure-element

