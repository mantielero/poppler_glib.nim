#import gintro/[gtk, glib, gobject, gio]
import gintro/glib
export glib  # GType
import cairo
export cairo


type
  Guint*   = uint        # FIXME
  Guint16* = uint16      # FIXME  
  Guint8*  = uint8       # FIXME    
  Glist*   = object      # FIXME
  Gchar*   = uint        # FIXME    

  Gint* = int # FIXME

  Gboolean* = bool # FIXME
  Gdouble* = float # FIXME
  Gpointer* = uint # FIXME

  Gobject* = object # FIXME
  GTime* = object # FIXME
  GDate* = object # FIXME  
  GDateTime* = object # FIXME   
  GString* = object # FIXME
  GArray* = object # FIXME  
  GBytes* = object # FIXME   
  GInputStream* = object # FIXME   
  GOffset* = object # FIXME    
  GObjectClass* = object # FIXME
  GCancellable* = object # FIXME
  GFile* = object # FIXME  
  GTree* = object # FIXME   
  #GQuark* = object # FIXME

  PopplerMovie* = object # FIXME
  PopplerMedia* = object # FIXME
  #PopplerPageTransitionType* = object # FIXME
  #PopplerPageTransitionAlignment* = object # FIXME
  #PopplerPageTransitionDirection* = object # FIXME
  PopplerFormField* = object # FIXME
  PopplerAnnot* = object # FIXME
  PopplerAnnotMarkup* = object # FIXME
  PopplerAnnotText* = object # FIXME
  PopplerAnnotTextMarkup* = object # FIXME
  PopplerIndexIter* = object # FIXME
  PopplerFontInfo* = object # FIXME
  PopplerFontsIter* = object # FIXME
  PopplerLayersIter* = object # FIXME
  PopplerLayer* = object # FIXME
  PopplerPSFile* = object # FIXME

  TimeT* = object # FIXME   
  CairoT*        = Context
  CairoSurfaceT* = Surface
  CairoRegionT* = object # FIXME


  PopplerPrintFlags* = object # FIXME
  PopplerFindFlags* = object # FIXME
#popplerDestGetType* = object

# GLIB================================
{.push header: "glib/gerror.h".}
type
  GQuark* {.importc.} = object
  GError* {.importc.} = object
    domain*:GQuark
    code*: cint
    message*: cstring
{.pop.}
# =====================================


{.push header: "poppler.h".}
type
  PopplerDocument* {.importc: "PopplerDocument", incompletestruct.} = object
  PopplerPage* {.importc: "PopplerPage", incompletestruct.} = object



{.pop.}




const
  POPPLER_ANNOT_TEXT_ICON_NOTE* = "Note"
  POPPLER_ANNOT_TEXT_ICON_COMMENT* = "Comment"
  POPPLER_ANNOT_TEXT_ICON_KEY* = "Key"
  POPPLER_ANNOT_TEXT_ICON_HELP* = "Help"
  POPPLER_ANNOT_TEXT_ICON_NEW_PARAGRAPH* = "NewParagraph"
  POPPLER_ANNOT_TEXT_ICON_PARAGRAPH* = "Paragraph"
  POPPLER_ANNOT_TEXT_ICON_INSERT* = "Insert"
  POPPLER_ANNOT_TEXT_ICON_CROSS* = "Cross"
  POPPLER_ANNOT_TEXT_ICON_CIRCLE* = "Circle"

  
type
  PopplerActionType* {.size: sizeof(cint).} = enum
    atPOPPLER_ACTION_UNKNOWN,   ##  unknown action
    atPOPPLER_ACTION_NONE,      ##  no action specified
    atPOPPLER_ACTION_GOTO_DEST, ##  go to destination
    atPOPPLER_ACTION_GOTO_REMOTE, ##  go to destination in new file
    atPOPPLER_ACTION_LAUNCH,    ##  launch app (or open document)
    atPOPPLER_ACTION_URI,       ##  URI
    atPOPPLER_ACTION_NAMED,     ##  named action
    atPOPPLER_ACTION_MOVIE,     ##  movie action
    atPOPPLER_ACTION_RENDITION, ##  rendition action
    atPOPPLER_ACTION_OCG_STATE, ##  Set-OCG-State action
    atPOPPLER_ACTION_JAVASCRIPT, ##  Javascript action
    atPOPPLER_ACTION_RESET_FORM ##  ResetForm action
## *
##  PopplerDestType:
##  @POPPLER_DEST_UNKNOWN: unknown destination
##  @POPPLER_DEST_XYZ: go to page with coordinates (left, top)
##  positioned at the upper-left corner of the window and the contents of
##  the page magnified by the factor zoom
##  @POPPLER_DEST_FIT: go to page with its contents magnified just
##  enough to fit the entire page within the window both horizontally and
##  vertically
##  @POPPLER_DEST_FITH: go to page with the vertical coordinate top
##  positioned at the top edge of the window and the contents of the page
##  magnified just enough to fit the entire width of the page within the window
##  @POPPLER_DEST_FITV: go to page with the horizontal coordinate
##  left positioned at the left edge of the window and the contents of the
##  page magnified just enough to fit the entire height of the page within the window
##  @POPPLER_DEST_FITR: go to page with its contents magnified just
##  enough to fit the rectangle specified by the coordinates left, bottom,
##  right, and top entirely within the window both horizontally and vertically
##  @POPPLER_DEST_FITB: go to page with its contents magnified just enough to fit
##  its bounding box entirely within the window both horizontally and vertically
##  @POPPLER_DEST_FITBH: go to page with the vertical
##  coordinate top positioned at the top edge of the window and the
##  contents of the page magnified just enough to fit the entire width of its
##  bounding box within the window
##  @POPPLER_DEST_FITBV: go to page with the horizontal
##  coordinate left positioned at the left edge of the window and the
##  contents of the page magnified just enough to fit the entire height of its
##  bounding box within the window
##  @POPPLER_DEST_NAMED: got to page specified by a name. See poppler_document_find_dest()
##
##  Destination types
##
type
  PopplerDestType* {.size: sizeof(cint).} = enum
    POPPLER_DEST_UNKNOWN, POPPLER_DEST_XYZ, POPPLER_DEST_FIT, POPPLER_DEST_FITH,
    POPPLER_DEST_FITV, POPPLER_DEST_FITR, POPPLER_DEST_FITB, POPPLER_DEST_FITBH,
    POPPLER_DEST_FITBV, POPPLER_DEST_NAMED
## *
##  PopplerActionMovieOperation:
##  @POPPLER_ACTION_MOVIE_PLAY: play movie
##  @POPPLER_ACTION_MOVIE_PAUSE: pause playing movie
##  @POPPLER_ACTION_MOVIE_RESUME: resume paused movie
##  @POPPLER_ACTION_MOVIE_STOP: stop playing movie
##
##  Movie operations
##
##  Since: 0.14
##
type
  PopplerActionMovieOperation* {.size: sizeof(cint).} = enum
    POPPLER_ACTION_MOVIE_PLAY, POPPLER_ACTION_MOVIE_PAUSE,
    POPPLER_ACTION_MOVIE_RESUME, POPPLER_ACTION_MOVIE_STOP
## *
##  PopplerActionLayerAction:
##  @POPPLER_ACTION_LAYER_ON: set layer visibility on
##  @POPPLER_ACTION_LAYER_OFF: set layer visibility off
##  @POPPLER_ACTION_LAYER_TOGGLE: reverse the layer visibility state
##
##  Layer actions
##
##  Since: 0.14
##
type
  PopplerActionLayerAction* {.size: sizeof(cint).} = enum
    POPPLER_ACTION_LAYER_ON, POPPLER_ACTION_LAYER_OFF, POPPLER_ACTION_LAYER_TOGGLE
##  Define the PopplerAction types
# type
#   PopplerActionAny* = popplerActionAny
#   PopplerActionGotoDest* = popplerActionGotoDest
#   PopplerActionGotoRemote* = popplerActionGotoRemote
#   PopplerActionLaunch* = popplerActionLaunch
#   PopplerActionUri* = popplerActionUri
#   PopplerActionNamed* = popplerActionNamed
#   PopplerActionMovie* = popplerActionMovie
#   PopplerActionRendition* = popplerActionRendition
#   PopplerActionOCGState* = popplerActionOCGState
#   PopplerActionJavascript* = popplerActionJavascript
#   PopplerActionResetForm* = popplerActionResetForm
## *
##  PopplerDest:
##  @type: type of destination
##  @page_num: page number
##  @left: left coordinate
##  @bottom: bottom coordinate
##  @right: right coordinate
##  @top: top coordinate
##  @zoom: scale factor
##  @named_dest: name of the destination (#POPPLER_DEST_NAMED only)
##  @change_left: whether left coordinate should be changed
##  @change_top: whether top coordinate should be changed
##  @change_zoom: whether scale factor should be changed
##
##  Data structure for holding a destination
##
##  Note that @named_dest is the string representation of the named
##  destination. This is the right form to pass to poppler functions,
##  e.g. poppler_document_find_dest(), but to get the destination as
##  it appears in the PDF itself, you need to convert it to a bytestring
##  with poppler_named_dest_to_bytestring() first.
##  Also note that @named_dest does not have a defined encoding and
##  is not in a form suitable to be displayed to the user.
##

type
  PopplerError* {.size: sizeof(cint).} = enum
    POPPLER_ERROR_INVALID, 
    POPPLER_ERROR_ENCRYPTED, 
    POPPLER_ERROR_OPEN_FILE,
    POPPLER_ERROR_BAD_CATALOG, 
    POPPLER_ERROR_DAMAGED
## *
##  PopplerPageTransitionType:
##  @POPPLER_PAGE_TRANSITION_REPLACE: the new page replace the old one
##  @POPPLER_PAGE_TRANSITION_SPLIT: two lines sweep across the screen, revealing the new page
##  @POPPLER_PAGE_TRANSITION_BLINDS: multiple lines, evenly spaced across the screen, synchronously
##  sweep in the same direction to reveal the new page
##  @POPPLER_PAGE_TRANSITION_BOX: a rectangular box sweeps inward from the edges of the page or
##  outward from the center revealing the new page
##  @POPPLER_PAGE_TRANSITION_WIPE: a single line sweeps across the screen from one edge to the other
##  revealing the new page
##  @POPPLER_PAGE_TRANSITION_DISSOLVE: the old page dissolves gradually to reveal the new one
##  @POPPLER_PAGE_TRANSITION_GLITTER: similar to #POPPLER_PAGE_TRANSITION_DISSOLVE, except that the effect
##  sweeps across the page in a wide band moving from one side of the screen to the other
##  @POPPLER_PAGE_TRANSITION_FLY: changes are flown out or in to or from a location that is offscreen
##  @POPPLER_PAGE_TRANSITION_PUSH: the old page slides off the screen while the new page slides in
##  @POPPLER_PAGE_TRANSITION_COVER: the new page slides on to the screen covering the old page
##  @POPPLER_PAGE_TRANSITION_UNCOVER: the old page slides off the screen uncovering the new page
##  @POPPLER_PAGE_TRANSITION_FADE: the new page gradually becomes visible through the old one
##
##  Page transition types
##
type
  PopplerPageTransitionType* {.size: sizeof(cint).} = enum
    POPPLER_PAGE_TRANSITION_REPLACE, POPPLER_PAGE_TRANSITION_SPLIT,
    POPPLER_PAGE_TRANSITION_BLINDS, POPPLER_PAGE_TRANSITION_BOX,
    POPPLER_PAGE_TRANSITION_WIPE, POPPLER_PAGE_TRANSITION_DISSOLVE,
    POPPLER_PAGE_TRANSITION_GLITTER, POPPLER_PAGE_TRANSITION_FLY,
    POPPLER_PAGE_TRANSITION_PUSH, POPPLER_PAGE_TRANSITION_COVER,
    POPPLER_PAGE_TRANSITION_UNCOVER, POPPLER_PAGE_TRANSITION_FADE
## *
##  PopplerPageTransitionAlignment:
##  @POPPLER_PAGE_TRANSITION_HORIZONTAL: horizontal dimension
##  @POPPLER_PAGE_TRANSITION_VERTICAL: vertical dimension
##
##  Page transition alignment types for #POPPLER_PAGE_TRANSITION_SPLIT
##  and #POPPLER_PAGE_TRANSITION_BLINDS transition types
##
type
  PopplerPageTransitionAlignment* {.size: sizeof(cint).} = enum
    POPPLER_PAGE_TRANSITION_HORIZONTAL, POPPLER_PAGE_TRANSITION_VERTICAL
## *
##  PopplerPageTransitionDirection:
##  @POPPLER_PAGE_TRANSITION_INWARD: inward from the edges of the page
##  @POPPLER_PAGE_TRANSITION_OUTWARD: outward from the center of the page
##
##  Page transition direction types for #POPPLER_PAGE_TRANSITION_SPLIT,
##  #POPPLER_PAGE_TRANSITION_BOX and #POPPLER_PAGE_TRANSITION_FLY transition types
##
type
  PopplerPageTransitionDirection* {.size: sizeof(cint).} = enum
    POPPLER_PAGE_TRANSITION_INWARD, POPPLER_PAGE_TRANSITION_OUTWARD
## *
##  PopplerSelectionStyle:
##  @POPPLER_SELECTION_GLYPH: glyph is the minimum unit for selection
##  @POPPLER_SELECTION_WORD: word is the minimum unit for selection
##  @POPPLER_SELECTION_LINE: line is the minimum unit for selection
##
##  Selection styles
##
type
  PopplerSelectionStyle* {.size: sizeof(cint).} = enum
    POPPLER_SELECTION_GLYPH, POPPLER_SELECTION_WORD, POPPLER_SELECTION_LINE
## *
##  PopplerPrintFlags:
##  @POPPLER_PRINT_DOCUMENT: print main document contents
##  @POPPLER_PRINT_MARKUP_ANNOTS: print document and markup annotations
##  @POPPLER_PRINT_STAMP_ANNOTS_ONLY: print document and only stamp annotations
##  @POPPLER_PRINT_ALL: print main document contents and all markup annotations
##
##  Printing flags
##
##  Since: 0.16
##
type
  PopplerBackend* {.size: sizeof(cint).} = enum
    POPPLER_BACKEND_UNKNOWN, POPPLER_BACKEND_SPLASH, POPPLER_BACKEND_CAIRO
type
  PopplerStructureElementKind* {.size: sizeof(cint).} = enum
    POPPLER_STRUCTURE_ELEMENT_CONTENT,
    POPPLER_STRUCTURE_ELEMENT_OBJECT_REFERENCE,
    POPPLER_STRUCTURE_ELEMENT_DOCUMENT, POPPLER_STRUCTURE_ELEMENT_PART,
    POPPLER_STRUCTURE_ELEMENT_ARTICLE, POPPLER_STRUCTURE_ELEMENT_SECTION,
    POPPLER_STRUCTURE_ELEMENT_DIV, POPPLER_STRUCTURE_ELEMENT_SPAN,
    POPPLER_STRUCTURE_ELEMENT_QUOTE, POPPLER_STRUCTURE_ELEMENT_NOTE,
    POPPLER_STRUCTURE_ELEMENT_REFERENCE, POPPLER_STRUCTURE_ELEMENT_BIBENTRY,
    POPPLER_STRUCTURE_ELEMENT_CODE, POPPLER_STRUCTURE_ELEMENT_LINK,
    POPPLER_STRUCTURE_ELEMENT_ANNOT, POPPLER_STRUCTURE_ELEMENT_BLOCKQUOTE,
    POPPLER_STRUCTURE_ELEMENT_CAPTION, POPPLER_STRUCTURE_ELEMENT_NONSTRUCT,
    POPPLER_STRUCTURE_ELEMENT_TOC, POPPLER_STRUCTURE_ELEMENT_TOC_ITEM,
    POPPLER_STRUCTURE_ELEMENT_INDEX, POPPLER_STRUCTURE_ELEMENT_PRIVATE,
    POPPLER_STRUCTURE_ELEMENT_PARAGRAPH, POPPLER_STRUCTURE_ELEMENT_HEADING,
    POPPLER_STRUCTURE_ELEMENT_HEADING_1, POPPLER_STRUCTURE_ELEMENT_HEADING_2,
    POPPLER_STRUCTURE_ELEMENT_HEADING_3, POPPLER_STRUCTURE_ELEMENT_HEADING_4,
    POPPLER_STRUCTURE_ELEMENT_HEADING_5, POPPLER_STRUCTURE_ELEMENT_HEADING_6,
    POPPLER_STRUCTURE_ELEMENT_LIST, POPPLER_STRUCTURE_ELEMENT_LIST_ITEM,
    POPPLER_STRUCTURE_ELEMENT_LIST_LABEL, POPPLER_STRUCTURE_ELEMENT_LIST_BODY,
    POPPLER_STRUCTURE_ELEMENT_TABLE, POPPLER_STRUCTURE_ELEMENT_TABLE_ROW,
    POPPLER_STRUCTURE_ELEMENT_TABLE_HEADING,
    POPPLER_STRUCTURE_ELEMENT_TABLE_DATA, POPPLER_STRUCTURE_ELEMENT_TABLE_HEADER,
    POPPLER_STRUCTURE_ELEMENT_TABLE_FOOTER, POPPLER_STRUCTURE_ELEMENT_TABLE_BODY,
    POPPLER_STRUCTURE_ELEMENT_RUBY, POPPLER_STRUCTURE_ELEMENT_RUBY_BASE_TEXT,
    POPPLER_STRUCTURE_ELEMENT_RUBY_ANNOT_TEXT,
    POPPLER_STRUCTURE_ELEMENT_RUBY_PUNCTUATION,
    POPPLER_STRUCTURE_ELEMENT_WARICHU, POPPLER_STRUCTURE_ELEMENT_WARICHU_TEXT,
    POPPLER_STRUCTURE_ELEMENT_WARICHU_PUNCTUATION,
    POPPLER_STRUCTURE_ELEMENT_FIGURE, POPPLER_STRUCTURE_ELEMENT_FORMULA,
    POPPLER_STRUCTURE_ELEMENT_FORM
## *
##  PopplerStructureGetTextFlags:
##  @POPPLER_STRUCTURE_GET_TEXT_NONE: No flags.
##  @POPPLER_STRUCTURE_GET_TEXT_RECURSIVE: For non-leaf, non-content
##     elements, recursively obtain the text from all the elements
##     enclosed in the subtree.
##
type
  PopplerStructureGetTextFlags* {.size: sizeof(cint).} = enum
    POPPLER_STRUCTURE_GET_TEXT_NONE = 0,
    POPPLER_STRUCTURE_GET_TEXT_RECURSIVE = (1 shl 0)
## *
##  PopplerStructurePlacement:
##
type
  PopplerStructurePlacement* {.size: sizeof(cint).} = enum
    POPPLER_STRUCTURE_PLACEMENT_BLOCK, POPPLER_STRUCTURE_PLACEMENT_INLINE,
    POPPLER_STRUCTURE_PLACEMENT_BEFORE, POPPLER_STRUCTURE_PLACEMENT_START,
    POPPLER_STRUCTURE_PLACEMENT_END
## *
##  PopplerStructureWritingMode:
##
type
  PopplerStructureWritingMode* {.size: sizeof(cint).} = enum
    POPPLER_STRUCTURE_WRITING_MODE_LR_TB, POPPLER_STRUCTURE_WRITING_MODE_RL_TB,
    POPPLER_STRUCTURE_WRITING_MODE_TB_RL
## *
##  PopplerStructureBorderStyle:
##
type
  PopplerStructureBorderStyle* {.size: sizeof(cint).} = enum
    POPPLER_STRUCTURE_BORDER_STYLE_NONE, POPPLER_STRUCTURE_BORDER_STYLE_HIDDEN,
    POPPLER_STRUCTURE_BORDER_STYLE_DOTTED, POPPLER_STRUCTURE_BORDER_STYLE_DASHED,
    POPPLER_STRUCTURE_BORDER_STYLE_SOLID, POPPLER_STRUCTURE_BORDER_STYLE_DOUBLE,
    POPPLER_STRUCTURE_BORDER_STYLE_GROOVE, POPPLER_STRUCTURE_BORDER_STYLE_INSET,
    POPPLER_STRUCTURE_BORDER_STYLE_OUTSET
## *
##  PopplerStructureTextAlign:
##
type
  PopplerStructureTextAlign* {.size: sizeof(cint).} = enum
    POPPLER_STRUCTURE_TEXT_ALIGN_START, POPPLER_STRUCTURE_TEXT_ALIGN_CENTER,
    POPPLER_STRUCTURE_TEXT_ALIGN_END, POPPLER_STRUCTURE_TEXT_ALIGN_JUSTIFY
## *
##  PopplerStructureBlockAlign:
##
type
  PopplerStructureBlockAlign* {.size: sizeof(cint).} = enum
    POPPLER_STRUCTURE_BLOCK_ALIGN_BEFORE, POPPLER_STRUCTURE_BLOCK_ALIGN_MIDDLE,
    POPPLER_STRUCTURE_BLOCK_ALIGN_AFTER, POPPLER_STRUCTURE_BLOCK_ALIGN_JUSTIFY
## *
##  PopplerStructureInlineAlign:
##
type
  PopplerStructureInlineAlign* {.size: sizeof(cint).} = enum
    POPPLER_STRUCTURE_INLINE_ALIGN_START, POPPLER_STRUCTURE_INLINE_ALIGN_CENTER,
    POPPLER_STRUCTURE_INLINE_ALIGN_END
## *
##  PopplerStructureTextDecoration:
##
type
  PopplerStructureTextDecoration* {.size: sizeof(cint).} = enum
    POPPLER_STRUCTURE_TEXT_DECORATION_NONE,
    POPPLER_STRUCTURE_TEXT_DECORATION_UNDERLINE,
    POPPLER_STRUCTURE_TEXT_DECORATION_OVERLINE,
    POPPLER_STRUCTURE_TEXT_DECORATION_LINETHROUGH
## *
##  PopplerStructureRubyAlign:
##
type
  PopplerStructureRubyAlign* {.size: sizeof(cint).} = enum
    POPPLER_STRUCTURE_RUBY_ALIGN_START, POPPLER_STRUCTURE_RUBY_ALIGN_CENTER,
    POPPLER_STRUCTURE_RUBY_ALIGN_END, POPPLER_STRUCTURE_RUBY_ALIGN_JUSTIFY,
    POPPLER_STRUCTURE_RUBY_ALIGN_DISTRIBUTE
## *
##  PopplerStructureRubyPosition:
##
type
  PopplerStructureRubyPosition* {.size: sizeof(cint).} = enum
    POPPLER_STRUCTURE_RUBY_POSITION_BEFORE,
    POPPLER_STRUCTURE_RUBY_POSITION_AFTER,
    POPPLER_STRUCTURE_RUBY_POSITION_WARICHU,
    POPPLER_STRUCTURE_RUBY_POSITION_INLINE
## *
##  PopplerStructureGlyphOrientation:
##
type
  PopplerStructureGlyphOrientation* {.size: sizeof(cint).} = enum
    POPPLER_STRUCTURE_GLYPH_ORIENTATION_AUTO,
    # FIXME 
    POPPLER_STRUCTURE_GLYPH_ORIENTATION_0,# = poppler_Structure_Glyph_Orientation_Auto,
    POPPLER_STRUCTURE_GLYPH_ORIENTATION_90,
    POPPLER_STRUCTURE_GLYPH_ORIENTATION_180,
    POPPLER_STRUCTURE_GLYPH_ORIENTATION_270
## *
##  PopplerStructureListNumbering:
##
type
  PopplerStructureListNumbering* {.size: sizeof(cint).} = enum
    POPPLER_STRUCTURE_LIST_NUMBERING_NONE, POPPLER_STRUCTURE_LIST_NUMBERING_DISC,
    POPPLER_STRUCTURE_LIST_NUMBERING_CIRCLE,
    POPPLER_STRUCTURE_LIST_NUMBERING_SQUARE,
    POPPLER_STRUCTURE_LIST_NUMBERING_DECIMAL,
    POPPLER_STRUCTURE_LIST_NUMBERING_UPPER_ROMAN,
    POPPLER_STRUCTURE_LIST_NUMBERING_LOWER_ROMAN,
    POPPLER_STRUCTURE_LIST_NUMBERING_UPPER_ALPHA,
    POPPLER_STRUCTURE_LIST_NUMBERING_LOWER_ALPHA
## *
##  PopplerStructureFormRole:
##
type
  PopplerStructureFormRole* {.size: sizeof(cint).} = enum
    POPPLER_STRUCTURE_FORM_ROLE_UNDEFINED,
    POPPLER_STRUCTURE_FORM_ROLE_RADIO_BUTTON,
    POPPLER_STRUCTURE_FORM_ROLE_PUSH_BUTTON,
    POPPLER_STRUCTURE_FORM_ROLE_TEXT_VALUE, POPPLER_STRUCTURE_FORM_ROLE_CHECKBOX
## *
##  PopplerStructureFormState:
##
type
  PopplerStructureFormState* {.size: sizeof(cint).} = enum
    POPPLER_STRUCTURE_FORM_STATE_ON, POPPLER_STRUCTURE_FORM_STATE_OFF,
    POPPLER_STRUCTURE_FORM_STATE_NEUTRAL
## *
##  PopplerStructureTableScope:
##
type
  PopplerStructureTableScope* {.size: sizeof(cint).} = enum
    POPPLER_STRUCTURE_TABLE_SCOPE_ROW, POPPLER_STRUCTURE_TABLE_SCOPE_COLUMN,
    POPPLER_STRUCTURE_TABLE_SCOPE_BOTH

type
  PopplerDest* {.importc: "_PopplerDest", header: "poppler-action.h", bycopy.} = object
    `type`* {.importc: "type".}: PopplerDestType
    pageNum* {.importc: "page_num".}: cint
    left* {.importc: "left".}: cdouble
    bottom* {.importc: "bottom".}: cdouble
    right* {.importc: "right".}: cdouble
    top* {.importc: "top".}: cdouble
    zoom* {.importc: "zoom".}: cdouble
    namedDest* {.importc: "named_dest".}: cstring # ptr Gchar
    changeLeft* {.importc: "change_left", bitsize: 1.}: Guint
    changeTop* {.importc: "change_top", bitsize: 1.}: Guint
    changeZoom* {.importc: "change_zoom", bitsize: 1.}: Guint
## *
##  PopplerActionLayer:
##  @action: a #PopplerActionLayerAction
##  @layers: (element-type PopplerLayer): list of #PopplerLayer<!-- -->s
##
##  Action to perform over a list of layers
##
type
  PopplerActionLayer* {.importc: "_PopplerActionLayer", header: "poppler-action.h",
                       bycopy.} = object
    action* {.importc: "action".}: PopplerActionLayerAction
    layers* {.importc: "layers".}: ptr GList
## *
##  PopplerActionAny:
##  @type: action type
##  @title: action title
##
##  Fields common to all #PopplerAction<!-- -->s
##
type
  PopplerActionAny* {.importc: "_PopplerActionAny", header: "poppler-action.h",
                     bycopy.} = object
    `type`* {.importc: "type".}: PopplerActionType
    title* {.importc: "title".}: cstring # ptr Gchar
## *
##  PopplerActionGotoDest:
##  @type: action type (%POPPLER_ACTION_GOTO_DEST)
##  @title: action title
##  @dest: destination
##
##  Go to destination
##
type
  PopplerActionGotoDest* {.importc: "_PopplerActionGotoDest",
                          header: "poppler-action.h", bycopy.} = object
    `type`* {.importc: "type".}: PopplerActionType
    title* {.importc: "title".}: cstring # ptr Gchar
    dest* {.importc: "dest".}: ptr PopplerDest
## *
##  PopplerActionGotoRemote:
##  @type: action type (%POPPLER_ACTION_GOTO_REMOTE)
##  @title: action title
##  @file_name: file name
##  @dest: destination
##
##  Go to destination in another document
##
type
  PopplerActionGotoRemote* {.importc: "_PopplerActionGotoRemote",
                            header: "poppler-action.h", bycopy.} = object
    `type`* {.importc: "type".}: PopplerActionType
    title* {.importc: "title".}: cstring # ptr Gchar
    fileName* {.importc: "file_name".}: cstring # ptr Gchar
    dest* {.importc: "dest".}: ptr PopplerDest
## *
##  PopplerActionLaunch:
##  @type: action type (%POPPLER_ACTION_LAUNCH)
##  @title: action title
##  @file_name: file name
##  @params: parameters
##
##  Launch app (or open document)
##
type
  PopplerActionLaunch* {.importc: "_PopplerActionLaunch",
                        header: "poppler-action.h", bycopy.} = object
    `type`* {.importc: "type".}: PopplerActionType
    title* {.importc: "title".}: cstring # ptr Gchar
    fileName* {.importc: "file_name".}: cstring # ptr Gchar
    params* {.importc: "params".}: cstring # ptr Gchar
## *
##  PopplerActionUri:
##  @type: action type (%POPPLER_ACTION_URI)
##  @title: action title
##  @uri: URI
##
##  URI
##
type
  PopplerActionUri* {.importc: "_PopplerActionUri", header: "poppler-action.h",
                     bycopy.} = object
    `type`* {.importc: "type".}: PopplerActionType
    title* {.importc: "title".}: cstring # ptr Gchar
    uri* {.importc: "uri".}: cstring
## *
##  PopplerActionNamed:
##  @type: action type (%POPPLER_ACTION_NAMED)
##  @title: action title
##  @named_dest: named destination
##
##  Predefined action
##
type
  PopplerActionNamed* {.importc: "_PopplerActionNamed", header: "poppler-action.h",
                       bycopy.} = object
    `type`* {.importc: "type".}: PopplerActionType
    title* {.importc: "title".}: cstring # ptr Gchar
    namedDest* {.importc: "named_dest".}: cstring # ptr Gchar
## *
##  PopplerActionMovie:
##  @type: action type (%POPPLER_ACTION_MOVIE)
##  @title: action title
##  @operation: operation
##  @movie: movie
##
##  Play movies.
##
##  Since: 0.14
##
type
  PopplerActionMovie* {.importc: "_PopplerActionMovie", header: "poppler-action.h",
                       bycopy.} = object
    `type`* {.importc: "type".}: PopplerActionType
    title* {.importc: "title".}: cstring # ptr Gchar
    operation* {.importc: "operation".}: PopplerActionMovieOperation
    movie* {.importc: "movie".}: ptr PopplerMovie
## *
##  PopplerActionRendition:
##  @type: action type (%POPPLER_ACTION_RENDITION)
##  @title: action title
##  @op: operation
##  @media: media
##
##  Play multimedia content.
##
##  Since: 0.14
##
type
  PopplerActionRendition* {.importc: "_PopplerActionRendition",
                           header: "poppler-action.h", bycopy.} = object
    `type`* {.importc: "type".}: PopplerActionType
    title* {.importc: "title".}: cstring # ptr Gchar
    op* {.importc: "op".}: Gint
    media* {.importc: "media".}: ptr PopplerMedia
## *
##  PopplerActionOCGState:
##  @type: action type (%POPPLER_ACTION_OCG_STATE)
##  @title: action title
##  @state_list: (element-type PopplerActionLayer): list of #PopplerActionLayer<!-- -->s
##
##  State of layer.
##
##  Since: 0.14
##
type
  PopplerActionOCGState* {.importc: "_PopplerActionOCGState",
                          header: "poppler-action.h", bycopy.} = object
    `type`* {.importc: "type".}: PopplerActionType
    title* {.importc: "title".}: cstring # ptr Gchar
    stateList* {.importc: "state_list".}: ptr GList
## *
##  PopplerActionJavascript:
##  @type: action type (%POPPLER_ACTION_JAVASCRIPT)
##  @title: action title
##  @script: javascript
##
##  Javascript.
##
##  Since: 0.18
##
type
  PopplerActionJavascript* {.importc: "_PopplerActionJavascript",
                            header: "poppler-action.h", bycopy.} = object
    `type`* {.importc: "type".}: PopplerActionType
    title* {.importc: "title".}: cstring # ptr Gchar
    script* {.importc: "script".}: cstring # ptr Gchar
## *
##  PopplerActionResetForm:
##  @type: action type (%POPPLER_ACTION_RESET_FORM)
##  @title: action title
##  @fields: (element-type utf8) (nullable): list of field names to
##    reset / retain
##  @exclude: whether to reset all but the listed fields
##
##  Resets some or all fields within a PDF form.
##
##  The default behavior resets only the list of @fields, but setting
##  @exclude to %TRUE will cause the action to reset all fields but those
##  listed. Providing an empty list of fields resets the entire form.
##
##  Since: 0.90
##
type
  PopplerActionResetForm* {.importc: "_PopplerActionResetForm",
                           header: "poppler-action.h", bycopy.} = object
    `type`* {.importc: "type".}: PopplerActionType
    title* {.importc: "title".}: cstring # ptr Gchar
    fields* {.importc: "fields".}: ptr GList
    exclude* {.importc: "exclude".}: Gboolean
## *
##  PopplerAction:
##
##  A generic wrapper for actions that exposes only #PopplerActionType.
##
type
  PopplerAction* {.importc: "_PopplerAction", header: "poppler-action.h", bycopy,
                  union.} = object
    `type`* {.importc: "type".}: PopplerActionType
    any* {.importc: "any".}: PopplerActionAny
    gotoDest* {.importc: "goto_dest".}: PopplerActionGotoDest
    gotoRemote* {.importc: "goto_remote".}: PopplerActionGotoRemote
    launch* {.importc: "launch".}: PopplerActionLaunch
    uri* {.importc: "uri".}: PopplerActionUri
    named* {.importc: "named".}: PopplerActionNamed
    movie* {.importc: "movie".}: PopplerActionMovie
    rendition* {.importc: "rendition".}: PopplerActionRendition
    ocgState* {.importc: "ocg_state".}: PopplerActionOCGState
    javascript* {.importc: "javascript".}: PopplerActionJavascript
    resetForm* {.importc: "reset_form".}: PopplerActionResetForm
##  #define POPPLER_TYPE_ACTION (poppler_action_get_type())
##  #define POPPLER_ACTION(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), POPPLER_TYPE_ACTION, PopplerAction))
type
  PopplerAnnotTextState* {.size: sizeof(cint).} = enum
    POPPLER_ANNOT_TEXT_STATE_MARKED, POPPLER_ANNOT_TEXT_STATE_UNMARKED,
    POPPLER_ANNOT_TEXT_STATE_ACCEPTED, POPPLER_ANNOT_TEXT_STATE_REJECTED,
    POPPLER_ANNOT_TEXT_STATE_CANCELLED, POPPLER_ANNOT_TEXT_STATE_COMPLETED,
    POPPLER_ANNOT_TEXT_STATE_NONE, POPPLER_ANNOT_TEXT_STATE_UNKNOWN
  PopplerAnnotFreeTextQuadding* {.size: sizeof(cint).} = enum
    POPPLER_ANNOT_FREE_TEXT_QUADDING_LEFT_JUSTIFIED,
    POPPLER_ANNOT_FREE_TEXT_QUADDING_CENTERED,
    POPPLER_ANNOT_FREE_TEXT_QUADDING_RIGHT_JUSTIFIED
type
  PopplerAnnotCalloutLine* {.importc: "_PopplerAnnotCalloutLine",
                            header: "poppler-annot.h", bycopy.} = object
    multiline* {.importc: "multiline".}: Gboolean
    x1* {.importc: "x1".}: Gdouble
    y1* {.importc: "y1".}: Gdouble
    x2* {.importc: "x2".}: Gdouble
    y2* {.importc: "y2".}: Gdouble
    x3* {.importc: "x3".}: Gdouble
    y3* {.importc: "y3".}: Gdouble
  PopplerAnnotStampIcon* {.size: sizeof(cint).} = enum
    POPPLER_ANNOT_STAMP_ICON_UNKNOWN = 0, POPPLER_ANNOT_STAMP_ICON_APPROVED,
    POPPLER_ANNOT_STAMP_ICON_AS_IS, POPPLER_ANNOT_STAMP_ICON_CONFIDENTIAL,
    POPPLER_ANNOT_STAMP_ICON_FINAL, POPPLER_ANNOT_STAMP_ICON_EXPERIMENTAL,
    POPPLER_ANNOT_STAMP_ICON_EXPIRED, POPPLER_ANNOT_STAMP_ICON_NOT_APPROVED,
    POPPLER_ANNOT_STAMP_ICON_NOT_FOR_PUBLIC_RELEASE,
    POPPLER_ANNOT_STAMP_ICON_SOLD, POPPLER_ANNOT_STAMP_ICON_DEPARTMENTAL,
    POPPLER_ANNOT_STAMP_ICON_FOR_COMMENT,
    POPPLER_ANNOT_STAMP_ICON_FOR_PUBLIC_RELEASE,
    POPPLER_ANNOT_STAMP_ICON_TOP_SECRET, POPPLER_ANNOT_STAMP_ICON_NONE
type
  #                                      ptr Gchar
  PopplerAttachmentSaveFunc* = proc (buf: cstring ; count: Gsize; data: Gpointer;
                                  error: ptr ptr GError): Gboolean {.cdecl.}
## *
##  PopplerAttachment:
##  @name: The filename. Deprecated in poppler 20.09.0. Use
##    poppler_attachment_get_name() instead.
##  @description: Descriptive text. Deprecated in poppler 20.09.0. Use
##    poppler_attachment_get_description() instead.
##  @size: The size of the file. Deprecated in poppler 20.09.0. Use
##    poppler_attachment_get_size() instead.
##  @mtime: The date and time when the file was last modified. Deprecated in
##    poppler 20.09.0. Use poppler_attachment_get_mtime() instead.
##  @ctime: The date and time when the file was created. Deprecated in poppler
##    20.09.0. Use poppler_attachment_get_ctime() instead.
##  @checksum: A 16-byte checksum of the file. Deprecated in poppler 20.09.0. Use
##    poppler_attachment_get_checksum() instead.
##
type
  PopplerAttachment* {.importc: "_PopplerAttachment",
                      header: "poppler-attachment.h", bycopy.} = object
    parent* {.importc: "parent".}: GObject ## < public >
    name* {.importc: "name".}: cstring # ptr Gchar
    description* {.importc: "description".}: cstring # ptr Gchar
    size* {.importc: "size".}: Gsize ##  GTime is deprecated, but is part of our ABI here (see #715, #765).
    mtime* {.importc: "mtime".}: GTime
    ctime* {.importc: "ctime".}: GTime
    checksum* {.importc: "checksum".}: ptr GString
##  This struct was not intended to be public, but can't be moved to
##  poppler-attachment.cc without breaking the API stability.
##
## *
##  PopplerAttachmentClass:
##
##  The GObject class structure of #PopplerAttachment.
##
type
  PopplerAttachmentClass* {.importc: "PopplerAttachmentClass",
                           header: "poppler-attachment.h", bycopy.} = object
    parentClass* {.importc: "parent_class".}: GObjectClass
type
  PopplerPageLayout* {.size: sizeof(cint).} = enum
    POPPLER_PAGE_LAYOUT_UNSET, POPPLER_PAGE_LAYOUT_SINGLE_PAGE,
    POPPLER_PAGE_LAYOUT_ONE_COLUMN, POPPLER_PAGE_LAYOUT_TWO_COLUMN_LEFT,
    POPPLER_PAGE_LAYOUT_TWO_COLUMN_RIGHT, POPPLER_PAGE_LAYOUT_TWO_PAGE_LEFT,
    POPPLER_PAGE_LAYOUT_TWO_PAGE_RIGHT
## *
##  PopplerPageMode:
##  @POPPLER_PAGE_MODE_UNSET: no specific mode set
##  @POPPLER_PAGE_MODE_NONE: neither document outline nor thumbnails visible
##  @POPPLER_PAGE_MODE_USE_OUTLINES: document outline visible
##  @POPPLER_PAGE_MODE_USE_THUMBS: thumbnails visible
##  @POPPLER_PAGE_MODE_FULL_SCREEN: full-screen mode
##  @POPPLER_PAGE_MODE_USE_OC: layers panel visible
##  @POPPLER_PAGE_MODE_USE_ATTACHMENTS: attachments panel visible
##
##  Page modes
##
type
  PopplerPageMode* {.size: sizeof(cint).} = enum
    POPPLER_PAGE_MODE_UNSET, POPPLER_PAGE_MODE_NONE,
    POPPLER_PAGE_MODE_USE_OUTLINES, POPPLER_PAGE_MODE_USE_THUMBS,
    POPPLER_PAGE_MODE_FULL_SCREEN, POPPLER_PAGE_MODE_USE_OC,
    POPPLER_PAGE_MODE_USE_ATTACHMENTS
## *
##  PopplerFontType:
##  @POPPLER_FONT_TYPE_UNKNOWN: unknown font type
##  @POPPLER_FONT_TYPE_TYPE1: Type 1 font type
##  @POPPLER_FONT_TYPE_TYPE1C: Type 1 font type embedded in Compact Font Format (CFF) font program
##  @POPPLER_FONT_TYPE_TYPE1COT: Type 1 font type embedded in OpenType font program
##  @POPPLER_FONT_TYPE_TYPE3: A font type that is defined with PDF graphics operators
##  @POPPLER_FONT_TYPE_TRUETYPE: TrueType font type
##  @POPPLER_FONT_TYPE_TRUETYPEOT: TrueType font type embedded in OpenType font program
##  @POPPLER_FONT_TYPE_CID_TYPE0: CIDFont type based on Type 1 font technology
##  @POPPLER_FONT_TYPE_CID_TYPE0C: CIDFont type based on Type 1 font technology embedded in CFF font program
##  @POPPLER_FONT_TYPE_CID_TYPE0COT: CIDFont type based on Type 1 font technology embedded in OpenType font program
##  @POPPLER_FONT_TYPE_CID_TYPE2: CIDFont type based on TrueType font technology
##  @POPPLER_FONT_TYPE_CID_TYPE2OT: CIDFont type based on TrueType font technology embedded in OpenType font program
##
##  Font types
##
type
  PopplerFontType* {.size: sizeof(cint).} = enum
    POPPLER_FONT_TYPE_UNKNOWN, POPPLER_FONT_TYPE_TYPE1, POPPLER_FONT_TYPE_TYPE1C,
    POPPLER_FONT_TYPE_TYPE1COT, POPPLER_FONT_TYPE_TYPE3,
    POPPLER_FONT_TYPE_TRUETYPE, POPPLER_FONT_TYPE_TRUETYPEOT,
    POPPLER_FONT_TYPE_CID_TYPE0, POPPLER_FONT_TYPE_CID_TYPE0C,
    POPPLER_FONT_TYPE_CID_TYPE0COT, POPPLER_FONT_TYPE_CID_TYPE2,
    POPPLER_FONT_TYPE_CID_TYPE2OT
## *
##  PopplerViewerPreferences:
##  @POPPLER_VIEWER_PREFERENCES_UNSET: no preferences set
##  @POPPLER_VIEWER_PREFERENCES_HIDE_TOOLBAR: hider toolbars when document is active
##  @POPPLER_VIEWER_PREFERENCES_HIDE_MENUBAR: hide menu bar when document is active
##  @POPPLER_VIEWER_PREFERENCES_HIDE_WINDOWUI: hide UI elements in document's window
##  @POPPLER_VIEWER_PREFERENCES_FIT_WINDOW: resize document's window to fit the size of the first displayed page
##  @POPPLER_VIEWER_PREFERENCES_CENTER_WINDOW: position the document's window in the center of the screen
##  @POPPLER_VIEWER_PREFERENCES_DISPLAY_DOC_TITLE: display document title in window's title bar
##  @POPPLER_VIEWER_PREFERENCES_DIRECTION_RTL: the predominant reading order for text is right to left
##
##  Viewer preferences
##
type
  PopplerPrintScaling* {.size: sizeof(cint).} = enum
    POPPLER_PRINT_SCALING_APP_DEFAULT, POPPLER_PRINT_SCALING_NONE
## *
##  PopplerPrintDuplex:
##  @POPPLER_PRINT_DUPLEX_NONE: No preference on duplex printing
##  @POPPLER_PRINT_DUPLEX_SIMPLEX: Print single-sided
##  @POPPLER_PRINT_DUPLEX_DUPLEX_FLIP_SHORT_EDGE: Duplex and flip on the short edge of the sheet
##  @POPPLER_PRINT_DUPLEX_DUPLEX_FLIP_LONG_EDGE: Duplex and flip on the long edge of the sheet
##
##  Duplex viewer preference
##
##  Since: 0.80
##
type
  PopplerPrintDuplex* {.size: sizeof(cint).} = enum
    POPPLER_PRINT_DUPLEX_NONE, POPPLER_PRINT_DUPLEX_SIMPLEX,
    POPPLER_PRINT_DUPLEX_DUPLEX_FLIP_SHORT_EDGE,
    POPPLER_PRINT_DUPLEX_DUPLEX_FLIP_LONG_EDGE
## *
##  PopplerPermissions:
##  @POPPLER_PERMISSIONS_OK_TO_PRINT: document can be printer
##  @POPPLER_PERMISSIONS_OK_TO_MODIFY: document contents can be modified
##  @POPPLER_PERMISSIONS_OK_TO_COPY: document can be copied
##  @POPPLER_PERMISSIONS_OK_TO_ADD_NOTES: annotations can added to the document
##  @POPPLER_PERMISSIONS_OK_TO_FILL_FORM: interactive form fields can be filled in
##  @POPPLER_PERMISSIONS_OK_TO_EXTRACT_CONTENTS: extract text and graphics
##  (in support of accessibility to users with disabilities or for other purposes). Since 0.18
##  @POPPLER_PERMISSIONS_OK_TO_ASSEMBLE: assemble the document (insert, rotate, or delete pages and create
##  bookmarks or thumbnail images). Since 0.18
##  @POPPLER_PERMISSIONS_OK_TO_PRINT_HIGH_RESOLUTION: document can be printer at high resolution. Since 0.18
##  @POPPLER_PERMISSIONS_FULL: document permits all operations
##
##  Permissions
##
##  clang-format off
type
  PopplerPDFSubtype* {.size: sizeof(cint).} = enum
    POPPLER_PDF_SUBTYPE_UNSET, POPPLER_PDF_SUBTYPE_PDF_A,
    POPPLER_PDF_SUBTYPE_PDF_E, POPPLER_PDF_SUBTYPE_PDF_UA,
    POPPLER_PDF_SUBTYPE_PDF_VT, POPPLER_PDF_SUBTYPE_PDF_X,
    POPPLER_PDF_SUBTYPE_NONE
## *
##  PopplerPDFPart:
##  @POPPLER_PDF_SUBTYPE_PART_UNSET: Null
##  @POPPLER_PDF_SUBTYPE_PART_1: 1
##  @POPPLER_PDF_SUBTYPE_PART_2: 2
##  @POPPLER_PDF_SUBTYPE_PART_3: 3
##  @POPPLER_PDF_SUBTYPE_PART_4: 4
##  @POPPLER_PDF_SUBTYPE_PART_5: 5
##  @POPPLER_PDF_SUBTYPE_PART_6: 6
##  @POPPLER_PDF_SUBTYPE_PART_7: 7
##  @POPPLER_PDF_SUBTYPE_PART_8: 8
##  @POPPLER_PDF_SUBTYPE_PART_NONE: No part available
##
##  PDF Subtype Part
##
##  Since: 0.70
##
type
  PopplerPDFPart* {.size: sizeof(cint).} = enum
    POPPLER_PDF_SUBTYPE_PART_UNSET, POPPLER_PDF_SUBTYPE_PART_1,
    POPPLER_PDF_SUBTYPE_PART_2, POPPLER_PDF_SUBTYPE_PART_3,
    POPPLER_PDF_SUBTYPE_PART_4, POPPLER_PDF_SUBTYPE_PART_5,
    POPPLER_PDF_SUBTYPE_PART_6, POPPLER_PDF_SUBTYPE_PART_7,
    POPPLER_PDF_SUBTYPE_PART_8, POPPLER_PDF_SUBTYPE_PART_NONE
## *
##  PopplerPDFConformance:
##  @POPPLER_PDF_SUBTYPE_CONF_UNSET: Null
##  @POPPLER_PDF_SUBTYPE_CONF_A: Level A (accessible) conformance (PDF/A)
##  @POPPLER_PDF_SUBTYPE_CONF_B: Level B (basic) conformance (PDF/A)
##  @POPPLER_PDF_SUBTYPE_CONF_G: Level G (external graphical content) (PDF/X)
##  @POPPLER_PDF_SUBTYPE_CONF_N: Level N (external ICC Profile) (PDF/X)
##  @POPPLER_PDF_SUBTYPE_CONF_P: Level P (ICC Profile) (PDF/X)
##  @POPPLER_PDF_SUBTYPE_CONF_PG: Level PG (conjunction of P and G) (PDF/X)
##  @POPPLER_PDF_SUBTYPE_CONF_U: Level U (Unicode) conformance (PDF/A)
##  @POPPLER_PDF_SUBTYPE_CONF_NONE: No conformance level available
##
##  PDF Subtype Conformance
##
##  Since: 0.70
##
type
  PopplerPDFConformance* {.size: sizeof(cint).} = enum
    POPPLER_PDF_SUBTYPE_CONF_UNSET, POPPLER_PDF_SUBTYPE_CONF_A,
    POPPLER_PDF_SUBTYPE_CONF_B, POPPLER_PDF_SUBTYPE_CONF_G,
    POPPLER_PDF_SUBTYPE_CONF_N, POPPLER_PDF_SUBTYPE_CONF_P,
    POPPLER_PDF_SUBTYPE_CONF_PG, POPPLER_PDF_SUBTYPE_CONF_U,
    POPPLER_PDF_SUBTYPE_CONF_NONE
type
  PopplerPageRange* {.importc: "_PopplerPageRange", header: "poppler-document.h",
                     bycopy.} = object
    startPage* {.importc: "start_page".}: Gint
    endPage* {.importc: "end_page".}: Gint
type
  PopplerSignatureStatus* {.size: sizeof(cint).} = enum
    POPPLER_SIGNATURE_VALID, POPPLER_SIGNATURE_INVALID,
    POPPLER_SIGNATURE_DIGEST_MISMATCH, POPPLER_SIGNATURE_DECODING_ERROR,
    POPPLER_SIGNATURE_GENERIC_ERROR, POPPLER_SIGNATURE_NOT_FOUND,
    POPPLER_SIGNATURE_NOT_VERIFIED
## *
##  PopplerCertificateStatus
##  @POPPLER_CERTIFICATE_TRUSTED: certificate is considered trusted
##  @POPPLER_CERTIFICATE_UNTRUSTED_ISSUER: the issuer of this certificate has been marked as untrusted by the user
##  @POPPLER_CERTIFICATE_UNKNOWN_ISSUER: this certificate trust chain has not finished in a trusted root certificate
##  @POPPLER_CERTIFICATE_REVOKED: certificate was revoked by the issuing certificate authority
##  @POPPLER_CERTIFICATE_EXPIRED: signing time is outside the validity bounds of this certificate
##  @POPPLER_CERTIFICATE_GENERIC_ERROR: failed to verify certificate
##  @POPPLER_CERTIFICATE_NOT_VERIFIED: certificate not yet verified
##
##  Signature certificate verification results
##
##  Since: 21.12.0
##
type
  PopplerCertificateStatus* {.size: sizeof(cint).} = enum
    POPPLER_CERTIFICATE_TRUSTED, POPPLER_CERTIFICATE_UNTRUSTED_ISSUER,
    POPPLER_CERTIFICATE_UNKNOWN_ISSUER, POPPLER_CERTIFICATE_REVOKED,
    POPPLER_CERTIFICATE_EXPIRED, POPPLER_CERTIFICATE_GENERIC_ERROR,
    POPPLER_CERTIFICATE_NOT_VERIFIED
## *
##  PopplerSignatureValidationFlags
##  @POPPLER_SIGNATURE_VALIDATION_FLAG_VALIDATE_CERTIFICATE: Whether to validate also the certificate of the signature
##  @POPPLER_SIGNATURE_VALIDATION_FLAG_WITHOUT_OCSP_REVOCATION_CHECK: Whether to not do OCSP (Online Certificate Status Protocol) revocation check
##  @POPPLER_SIGNATURE_VALIDATION_FLAG_USE_AIA_CERTIFICATE_FETCH: Whether to use AIA (Authority Information Access) extension for certificate fetching
##
##  Signature validation flags
##
##  Since: 21.12.0
##
type
  PopplerAdditionalActionType* {.size: sizeof(cint).} = enum
    POPPLER_ADDITIONAL_ACTION_FIELD_MODIFIED,
    POPPLER_ADDITIONAL_ACTION_FORMAT_FIELD,
    POPPLER_ADDITIONAL_ACTION_VALIDATE_FIELD,
    POPPLER_ADDITIONAL_ACTION_CALCULATE_FIELD
type
  #                                 ptr Gchar
  PopplerMediaSaveFunc* = proc (buf: cstring ; count: Gsize; data: Gpointer;
                             error: ptr ptr GError): Gboolean {.cdecl.}
type
  PopplerMoviePlayMode* {.size: sizeof(cint).} = enum
    POPPLER_MOVIE_PLAY_MODE_ONCE, POPPLER_MOVIE_PLAY_MODE_OPEN,
    POPPLER_MOVIE_PLAY_MODE_REPEAT, POPPLER_MOVIE_PLAY_MODE_PALINDROME
type
  PopplerRectangle* {.importc: "_PopplerRectangle", header: "poppler-page.h", bycopy.} = object
    x1* {.importc: "x1".}: Gdouble
    y1* {.importc: "y1".}: Gdouble
    x2* {.importc: "x2".}: Gdouble
    y2* {.importc: "y2".}: Gdouble
type
  PopplerPoint* {.importc: "_PopplerPoint", header: "poppler-page.h", bycopy.} = object
    x* {.importc: "x".}: Gdouble
    y* {.importc: "y".}: Gdouble
type
  PopplerQuadrilateral* {.importc: "_PopplerQuadrilateral",
                         header: "poppler-page.h", bycopy.} = object
    p1* {.importc: "p1".}: PopplerPoint
    p2* {.importc: "p2".}: PopplerPoint
    p3* {.importc: "p3".}: PopplerPoint
    p4* {.importc: "p4".}: PopplerPoint
type
  PopplerColor* {.importc: "_PopplerColor", header: "poppler-page.h", bycopy.} = object
    red* {.importc: "red".}: Guint16
    green* {.importc: "green".}: Guint16
    blue* {.importc: "blue".}: Guint16
type
  PopplerTextAttributes* {.importc: "_PopplerTextAttributes",
                          header: "poppler-page.h", bycopy.} = object
    fontName* {.importc: "font_name".}: cstring # ptr Gchar
    fontSize* {.importc: "font_size".}: Gdouble
    isUnderlined* {.importc: "is_underlined".}: Gboolean
    color* {.importc: "color".}: PopplerColor
    startIndex* {.importc: "start_index".}: Gint
    endIndex* {.importc: "end_index".}: Gint
type
  PopplerLinkMapping* {.importc: "_PopplerLinkMapping", header: "poppler-page.h",
                       bycopy.} = object
    area* {.importc: "area".}: PopplerRectangle
    action* {.importc: "action".}: ptr PopplerAction
type
  PopplerPageTransition* {.importc: "_PopplerPageTransition",
                          header: "poppler-page.h", bycopy.} = object
    `type`* {.importc: "type".}: PopplerPageTransitionType
    alignment* {.importc: "alignment".}: PopplerPageTransitionAlignment
    direction* {.importc: "direction".}: PopplerPageTransitionDirection
    duration* {.importc: "duration".}: Gint
    angle* {.importc: "angle".}: Gint
    scale* {.importc: "scale".}: Gdouble
    rectangular* {.importc: "rectangular".}: Gboolean
    durationReal* {.importc: "duration_real".}: Gdouble
type
  PopplerImageMapping* {.importc: "_PopplerImageMapping", header: "poppler-page.h",
                        bycopy.} = object
    area* {.importc: "area".}: PopplerRectangle
    imageId* {.importc: "image_id".}: Gint
type
  PopplerFormFieldMapping* {.importc: "_PopplerFormFieldMapping",
                            header: "poppler-page.h", bycopy.} = object
    area* {.importc: "area".}: PopplerRectangle
    field* {.importc: "field".}: ptr PopplerFormField
type
  PopplerAnnotMapping* {.importc: "_PopplerAnnotMapping", header: "poppler-page.h",
                        bycopy.} = object
    area* {.importc: "area".}: PopplerRectangle
    annot* {.importc: "annot".}: ptr PopplerAnnot

