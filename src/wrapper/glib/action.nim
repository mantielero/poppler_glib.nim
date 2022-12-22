import glib_types

##  poppler-action.h: glib interface to poppler
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


## *
##  PopplerActionType:
##  @POPPLER_ACTION_UNKNOWN: unknown action
##  @POPPLER_ACTION_NONE: no action specified
##  @POPPLER_ACTION_GOTO_DEST: go to destination
##  @POPPLER_ACTION_GOTO_REMOTE: go to destination in another document
##  @POPPLER_ACTION_LAUNCH: launch app (or open document)
##  @POPPLER_ACTION_URI: URI
##  @POPPLER_ACTION_NAMED: predefined action
##  @POPPLER_ACTION_MOVIE: play movies. Since 0.14
##  @POPPLER_ACTION_RENDITION: play multimedia content. Since 0.14
##  @POPPLER_ACTION_OCG_STATE: state of layer. Since 0.14
##  @POPPLER_ACTION_JAVASCRIPT: Javascript. Since 0.18
##  @POPPLER_ACTION_RESET_FORM: resets form. Since 0.90
##
##  Action types
##

proc popplerActionGetType*(): GType {.cdecl, importc: "poppler_action_get_type",
                                   header: "poppler-action.h".}
proc popplerActionFree*(action: ptr PopplerAction) {.cdecl,
    importc: "poppler_action_free", header: "poppler-action.h".}
proc popplerActionCopy*(action: ptr PopplerAction): ptr PopplerAction {.cdecl,
    importc: "poppler_action_copy", header: "poppler-action.h".}
#const
#  POPPLER_TYPE_DEST* = (popplerDestGetType())

proc popplerDestGetType*(): GType {.cdecl, importc: "poppler_dest_get_type",
                                 header: "poppler-action.h".}
proc popplerDestFree*(dest: ptr PopplerDest) {.cdecl, importc: "poppler_dest_free",
    header: "poppler-action.h".}
proc popplerDestCopy*(dest: ptr PopplerDest): ptr PopplerDest {.cdecl,
    importc: "poppler_dest_copy", header: "poppler-action.h".}
proc popplerNamedDestFromBytestring*(data: ptr Guint8; length: Gsize): cstring {.cdecl,
    importc: "poppler_named_dest_from_bytestring", header: "poppler-action.h".}
proc popplerNamedDestToBytestring*(name: cstring; length: ptr Gsize): ptr Guint8 {.
    cdecl, importc: "poppler_named_dest_to_bytestring", header: "poppler-action.h".}
