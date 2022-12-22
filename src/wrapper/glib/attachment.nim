import glib_types

##  poppler-attachment.h: glib interface to poppler
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


const
  POPPLER_TYPE_ATTACHMENT* = (popplerAttachmentGetType())

template poppler_Attachment*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Attachment, popplerAttachment))

template poppler_Is_Attachment*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Attachment))

## *
##  PopplerAttachmentSaveFunc:
##  @buf: (array length=count) (element-type guint8): buffer containing
##    bytes to be written.
##  @count: number of bytes in @buf.
##  @data: (closure): user data passed to poppler_attachment_save_to_callback()
##  @error: GError to set on error, or %NULL
##
##  Specifies the type of the function passed to
##  poppler_attachment_save_to_callback().  It is called once for each block of
##  bytes that is "written" by poppler_attachment_save_to_callback().  If
##  successful it should return %TRUE.  If an error occurs it should set
##  @error and return %FALSE, in which case poppler_attachment_save_to_callback()
##  will fail with the same error.
##
##  Returns: %TRUE if successful, %FALSE (with @error set) if failed.
##








proc popplerAttachmentGetType*(): GType {.cdecl,
                                       importc: "poppler_attachment_get_type",
                                       header: "poppler-attachment.h".}
proc popplerAttachmentGetChecksum*(attachment: ptr PopplerAttachment): ptr GString {.
    cdecl, importc: "poppler_attachment_get_checksum",
    header: "poppler-attachment.h".}
proc popplerAttachmentGetCtime*(attachment: ptr PopplerAttachment): ptr GDateTime {.
    cdecl, importc: "poppler_attachment_get_ctime", header: "poppler-attachment.h".}
proc popplerAttachmentGetDescription*(attachment: ptr PopplerAttachment): ptr Gchar {.
    cdecl, importc: "poppler_attachment_get_description",
    header: "poppler-attachment.h".}
proc popplerAttachmentGetMtime*(attachment: ptr PopplerAttachment): ptr GDateTime {.
    cdecl, importc: "poppler_attachment_get_mtime", header: "poppler-attachment.h".}
proc popplerAttachmentGetName*(attachment: ptr PopplerAttachment): ptr Gchar {.cdecl,
    importc: "poppler_attachment_get_name", header: "poppler-attachment.h".}
proc popplerAttachmentGetSize*(attachment: ptr PopplerAttachment): Gsize {.cdecl,
    importc: "poppler_attachment_get_size", header: "poppler-attachment.h".}
proc popplerAttachmentSave*(attachment: ptr PopplerAttachment; filename: cstring;
                           error: ptr ptr GError): Gboolean {.cdecl,
    importc: "poppler_attachment_save", header: "poppler-attachment.h".}
when not defined(G_OS_WIN32):
  proc popplerAttachmentSaveToFd*(attachment: ptr PopplerAttachment; fd: cint;
                                 error: ptr ptr GError): Gboolean {.cdecl,
      importc: "poppler_attachment_save_to_fd", header: "poppler-attachment.h".}
proc popplerAttachmentSaveToCallback*(attachment: ptr PopplerAttachment;
                                     saveFunc: PopplerAttachmentSaveFunc;
                                     userData: Gpointer; error: ptr ptr GError): Gboolean {.
    cdecl, importc: "poppler_attachment_save_to_callback",
    header: "poppler-attachment.h".}
