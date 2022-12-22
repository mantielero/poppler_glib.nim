import glib_types

##  poppler-media.h: glib interface to MediaRendition
##
##  Copyright (C) 2010 Carlos Garcia Campos <carlosgc@gnome.org>
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
  POPPLER_TYPE_MEDIA* = (popplerMediaGetType())

template poppler_Media*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Media, popplerMedia))

template poppler_Is_Media*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Media))

##  FIXME: this should be generic (PopplerSaveToCallbackFunc)
## *
##  PopplerMediaSaveFunc:
##  @buf: (array length=count) (element-type guint8): buffer containing
##    bytes to be written.
##  @count: number of bytes in @buf.
##  @data: (closure): user data passed to poppler_media_save_to_callback()
##  @error: GError to set on error, or %NULL
##
##  Specifies the type of the function passed to
##  poppler_media_save_to_callback().  It is called once for each block of
##  bytes that is "written" by poppler_media_save_to_callback().  If
##  successful it should return %TRUE.  If an error occurs it should set
##  @error and return %FALSE, in which case poppler_media_save_to_callback()
##  will fail with the same error.
##
##  Returns: %TRUE if successful, %FALSE (with @error set) if failed.
##
##  Since: 0.14
##


proc popplerMediaGetType*(): GType {.cdecl, importc: "poppler_media_get_type",
                                  header: "poppler-media.h".}
proc popplerMediaIsEmbedded*(popplerMedia: ptr PopplerMedia): Gboolean {.cdecl,
    importc: "poppler_media_is_embedded", header: "poppler-media.h".}
proc popplerMediaGetFilename*(popplerMedia: ptr PopplerMedia): ptr Gchar {.cdecl,
    importc: "poppler_media_get_filename", header: "poppler-media.h".}
proc popplerMediaGetMimeType*(popplerMedia: ptr PopplerMedia): ptr Gchar {.cdecl,
    importc: "poppler_media_get_mime_type", header: "poppler-media.h".}
proc popplerMediaGetAutoPlay*(popplerMedia: ptr PopplerMedia): Gboolean {.cdecl,
    importc: "poppler_media_get_auto_play", header: "poppler-media.h".}
proc popplerMediaGetShowControls*(popplerMedia: ptr PopplerMedia): Gboolean {.cdecl,
    importc: "poppler_media_get_show_controls", header: "poppler-media.h".}
proc popplerMediaGetRepeatCount*(popplerMedia: ptr PopplerMedia): Gfloat {.cdecl,
    importc: "poppler_media_get_repeat_count", header: "poppler-media.h".}
proc popplerMediaSave*(popplerMedia: ptr PopplerMedia; filename: cstring;
                      error: ptr ptr GError): Gboolean {.cdecl,
    importc: "poppler_media_save", header: "poppler-media.h".}
when not defined(G_OS_WIN32):
  proc popplerMediaSaveToFd*(popplerMedia: ptr PopplerMedia; fd: cint;
                            error: ptr ptr GError): Gboolean {.cdecl,
      importc: "poppler_media_save_to_fd", header: "poppler-media.h".}
proc popplerMediaSaveToCallback*(popplerMedia: ptr PopplerMedia;
                                saveFunc: PopplerMediaSaveFunc;
                                userData: Gpointer; error: ptr ptr GError): Gboolean {.
    cdecl, importc: "poppler_media_save_to_callback", header: "poppler-media.h".}
