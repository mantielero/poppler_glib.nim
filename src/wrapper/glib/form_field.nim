import glib_types

##  poppler-form-field.h: glib interface to poppler
##
##  Copyright (C) 2007 Carlos Garcia Campos <carlosgc@gnome.org>
##  Copyright (C) 2021 André Guerreiro <aguerreiro1985@gmail.com>
##  Copyright (C) 2021 Marek Kasik <mkasik@redhat.com>
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


const
  POPPLER_TYPE_FORM_FIELD* = (popplerFormFieldGetType())

template poppler_Form_Field*(obj: untyped): untyped =
  (g_Type_Check_Instance_Cast((obj), poppler_Type_Form_Field, popplerFormField))

template poppler_Is_Form_Field*(obj: untyped): untyped =
  (g_Type_Check_Instance_Type((obj), poppler_Type_Form_Field))

## *
##  PopplerSignatureStatus
##  @POPPLER_SIGNATURE_VALID: signature is cryptographically valid
##  @POPPLER_SIGNATURE_INVALID: signature is cryptographically invalid
##  @POPPLER_SIGNATURE_DIGEST_MISMATCH: document content was changed after the signature was applied
##  @POPPLER_SIGNATURE_DECODING_ERROR: signature CMS/PKCS7 structure is malformed
##  @POPPLER_SIGNATURE_GENERIC_ERROR: failed to verify signature
##  @POPPLER_SIGNATURE_NOT_FOUND: requested signature is not present in the document
##  @POPPLER_SIGNATURE_NOT_VERIFIED: signature not yet verified
##
##  Signature verification results
##
##  Since: 21.12.0
##







type                          ## < flags >
  PopplerSignatureValidationFlags* {.size: sizeof(cint).} = enum
    POPPLER_SIGNATURE_VALIDATION_FLAG_VALIDATE_CERTIFICATE = 1 shl 0,
    POPPLER_SIGNATURE_VALIDATION_FLAG_WITHOUT_OCSP_REVOCATION_CHECK = 1 shl 1,
    POPPLER_SIGNATURE_VALIDATION_FLAG_USE_AIA_CERTIFICATE_FETCH = 1 shl 2
  PopplerFormFieldType* {.size: sizeof(cint).} = enum
    POPPLER_FORM_FIELD_UNKNOWN, POPPLER_FORM_FIELD_BUTTON,
    POPPLER_FORM_FIELD_TEXT, POPPLER_FORM_FIELD_CHOICE,
    POPPLER_FORM_FIELD_SIGNATURE
  PopplerFormButtonType* {.size: sizeof(cint).} = enum
    POPPLER_FORM_BUTTON_PUSH, POPPLER_FORM_BUTTON_CHECK, POPPLER_FORM_BUTTON_RADIO
  PopplerFormTextType* {.size: sizeof(cint).} = enum
    POPPLER_FORM_TEXT_NORMAL, POPPLER_FORM_TEXT_MULTILINE,
    POPPLER_FORM_TEXT_FILE_SELECT
  PopplerFormChoiceType* {.size: sizeof(cint).} = enum
    POPPLER_FORM_CHOICE_COMBO, POPPLER_FORM_CHOICE_LIST






## *
##  PopplerAdditionalActionType:
##  @POPPLER_ADDITIONAL_ACTION_FIELD_MODIFIED: The action to be performed when the user modifies the field.
##  @POPPLER_ADDITIONAL_ACTION_FORMAT_FIELD: The action to be performed before the field is formatted to
##  display its value.
##  @POPPLER_ADDITIONAL_ACTION_VALIDATE_FIELD: The action to be performed when the field value changes.
##  @POPPLER_ADDITIONAL_ACTION_CALCULATE_FIELD: The action to be performed when the field needs to be
##  recalculated.
##
##  Form field additional action types to be passed to @poppler_form_field_get_additional_action
##
##  Since: 0.72
##



proc popplerFormFieldGetType*(): GType {.cdecl,
                                      importc: "poppler_form_field_get_type",
                                      header: "poppler-form-field.h".}
proc popplerFormFieldGetFieldType*(field: ptr PopplerFormField): PopplerFormFieldType {.
    cdecl, importc: "poppler_form_field_get_field_type",
    header: "poppler-form-field.h".}
proc popplerFormFieldGetId*(field: ptr PopplerFormField): Gint {.cdecl,
    importc: "poppler_form_field_get_id", header: "poppler-form-field.h".}
proc popplerFormFieldGetFontSize*(field: ptr PopplerFormField): Gdouble {.cdecl,
    importc: "poppler_form_field_get_font_size", header: "poppler-form-field.h".}
proc popplerFormFieldIsReadOnly*(field: ptr PopplerFormField): Gboolean {.cdecl,
    importc: "poppler_form_field_is_read_only", header: "poppler-form-field.h".}
proc popplerFormFieldGetPartialName*(field: ptr PopplerFormField): ptr Gchar {.cdecl,
    importc: "poppler_form_field_get_partial_name", header: "poppler-form-field.h".}
proc popplerFormFieldGetMappingName*(field: ptr PopplerFormField): ptr Gchar {.cdecl,
    importc: "poppler_form_field_get_mapping_name", header: "poppler-form-field.h".}
proc popplerFormFieldGetName*(field: ptr PopplerFormField): ptr Gchar {.cdecl,
    importc: "poppler_form_field_get_name", header: "poppler-form-field.h".}
proc popplerFormFieldGetAction*(field: ptr PopplerFormField): ptr PopplerAction {.
    cdecl, importc: "poppler_form_field_get_action", header: "poppler-form-field.h".}
proc popplerFormFieldGetAdditionalAction*(field: ptr PopplerFormField;
    `type`: PopplerAdditionalActionType): ptr PopplerAction {.cdecl,
    importc: "poppler_form_field_get_additional_action",
    header: "poppler-form-field.h".}
proc popplerFormFieldGetAlternateUiName*(field: ptr PopplerFormField): ptr Gchar {.
    cdecl, importc: "poppler_form_field_get_alternate_ui_name",
    header: "poppler-form-field.h".}
##  Button Field

proc popplerFormFieldButtonGetButtonType*(field: ptr PopplerFormField): PopplerFormButtonType {.
    cdecl, importc: "poppler_form_field_button_get_button_type",
    header: "poppler-form-field.h".}
proc popplerFormFieldButtonGetState*(field: ptr PopplerFormField): Gboolean {.cdecl,
    importc: "poppler_form_field_button_get_state", header: "poppler-form-field.h".}
proc popplerFormFieldButtonSetState*(field: ptr PopplerFormField; state: Gboolean) {.
    cdecl, importc: "poppler_form_field_button_set_state",
    header: "poppler-form-field.h".}
##  Text Field

proc popplerFormFieldTextGetTextType*(field: ptr PopplerFormField): PopplerFormTextType {.
    cdecl, importc: "poppler_form_field_text_get_text_type",
    header: "poppler-form-field.h".}
proc popplerFormFieldTextGetText*(field: ptr PopplerFormField): ptr Gchar {.cdecl,
    importc: "poppler_form_field_text_get_text", header: "poppler-form-field.h".}
proc popplerFormFieldTextSetText*(field: ptr PopplerFormField; text: ptr Gchar) {.
    cdecl, importc: "poppler_form_field_text_set_text",
    header: "poppler-form-field.h".}
proc popplerFormFieldTextGetMaxLen*(field: ptr PopplerFormField): Gint {.cdecl,
    importc: "poppler_form_field_text_get_max_len", header: "poppler-form-field.h".}
proc popplerFormFieldTextDoSpellCheck*(field: ptr PopplerFormField): Gboolean {.
    cdecl, importc: "poppler_form_field_text_do_spell_check",
    header: "poppler-form-field.h".}
proc popplerFormFieldTextDoScroll*(field: ptr PopplerFormField): Gboolean {.cdecl,
    importc: "poppler_form_field_text_do_scroll", header: "poppler-form-field.h".}
proc popplerFormFieldTextIsRichText*(field: ptr PopplerFormField): Gboolean {.cdecl,
    importc: "poppler_form_field_text_is_rich_text",
    header: "poppler-form-field.h".}
proc popplerFormFieldTextIsPassword*(field: ptr PopplerFormField): Gboolean {.cdecl,
    importc: "poppler_form_field_text_is_password", header: "poppler-form-field.h".}
##  Choice Field

proc popplerFormFieldChoiceGetChoiceType*(field: ptr PopplerFormField): PopplerFormChoiceType {.
    cdecl, importc: "poppler_form_field_choice_get_choice_type",
    header: "poppler-form-field.h".}
proc popplerFormFieldChoiceIsEditable*(field: ptr PopplerFormField): Gboolean {.
    cdecl, importc: "poppler_form_field_choice_is_editable",
    header: "poppler-form-field.h".}
proc popplerFormFieldChoiceCanSelectMultiple*(field: ptr PopplerFormField): Gboolean {.
    cdecl, importc: "poppler_form_field_choice_can_select_multiple",
    header: "poppler-form-field.h".}
proc popplerFormFieldChoiceDoSpellCheck*(field: ptr PopplerFormField): Gboolean {.
    cdecl, importc: "poppler_form_field_choice_do_spell_check",
    header: "poppler-form-field.h".}
proc popplerFormFieldChoiceCommitOnChange*(field: ptr PopplerFormField): Gboolean {.
    cdecl, importc: "poppler_form_field_choice_commit_on_change",
    header: "poppler-form-field.h".}
proc popplerFormFieldChoiceGetNItems*(field: ptr PopplerFormField): Gint {.cdecl,
    importc: "poppler_form_field_choice_get_n_items",
    header: "poppler-form-field.h".}
proc popplerFormFieldChoiceGetItem*(field: ptr PopplerFormField; index: Gint): ptr Gchar {.
    cdecl, importc: "poppler_form_field_choice_get_item",
    header: "poppler-form-field.h".}
proc popplerFormFieldChoiceIsItemSelected*(field: ptr PopplerFormField; index: Gint): Gboolean {.
    cdecl, importc: "poppler_form_field_choice_is_item_selected",
    header: "poppler-form-field.h".}
proc popplerFormFieldChoiceSelectItem*(field: ptr PopplerFormField; index: Gint) {.
    cdecl, importc: "poppler_form_field_choice_select_item",
    header: "poppler-form-field.h".}
proc popplerFormFieldChoiceUnselectAll*(field: ptr PopplerFormField) {.cdecl,
    importc: "poppler_form_field_choice_unselect_all",
    header: "poppler-form-field.h".}
proc popplerFormFieldChoiceToggleItem*(field: ptr PopplerFormField; index: Gint) {.
    cdecl, importc: "poppler_form_field_choice_toggle_item",
    header: "poppler-form-field.h".}
proc popplerFormFieldChoiceSetText*(field: ptr PopplerFormField; text: ptr Gchar) {.
    cdecl, importc: "poppler_form_field_choice_set_text",
    header: "poppler-form-field.h".}
proc popplerFormFieldChoiceGetText*(field: ptr PopplerFormField): ptr Gchar {.cdecl,
    importc: "poppler_form_field_choice_get_text", header: "poppler-form-field.h".}
proc popplerFormFieldSignatureValidateSync*(field: ptr PopplerFormField;
    flags: PopplerSignatureValidationFlags; cancellable: ptr GCancellable;
    error: ptr ptr GError): ptr PopplerSignatureInfo {.cdecl,
    importc: "poppler_form_field_signature_validate_sync",
    header: "poppler-form-field.h".}
proc popplerFormFieldSignatureValidateAsync*(field: ptr PopplerFormField;
    flags: PopplerSignatureValidationFlags; cancellable: ptr GCancellable;
    callback: GAsyncReadyCallback; userData: Gpointer) {.cdecl,
    importc: "poppler_form_field_signature_validate_async",
    header: "poppler-form-field.h".}
proc popplerFormFieldSignatureValidateFinish*(field: ptr PopplerFormField;
    result: ptr GAsyncResult; error: ptr ptr GError): ptr PopplerSignatureInfo {.cdecl,
    importc: "poppler_form_field_signature_validate_finish",
    header: "poppler-form-field.h".}
##  Signature Field

const
  POPPLER_TYPE_SIGNATURE_INFO* = (popplerSignatureInfoGetType())

proc popplerSignatureInfoGetType*(): GType {.cdecl,
    importc: "poppler_signature_info_get_type", header: "poppler-form-field.h".}
proc popplerSignatureInfoCopy*(siginfo: ptr PopplerSignatureInfo): ptr PopplerSignatureInfo {.
    cdecl, importc: "poppler_signature_info_copy", header: "poppler-form-field.h".}
proc popplerSignatureInfoFree*(siginfo: ptr PopplerSignatureInfo) {.cdecl,
    importc: "poppler_signature_info_free", header: "poppler-form-field.h".}
proc popplerSignatureInfoGetSignatureStatus*(siginfo: ptr PopplerSignatureInfo): PopplerSignatureStatus {.
    cdecl, importc: "poppler_signature_info_get_signature_status",
    header: "poppler-form-field.h".}
proc popplerSignatureInfoGetCertificateStatus*(siginfo: ptr PopplerSignatureInfo): PopplerCertificateStatus {.
    cdecl, importc: "poppler_signature_info_get_certificate_status",
    header: "poppler-form-field.h".}
proc popplerSignatureInfoGetSignerName*(siginfo: ptr PopplerSignatureInfo): ptr Gchar {.
    cdecl, importc: "poppler_signature_info_get_signer_name",
    header: "poppler-form-field.h".}
proc popplerSignatureInfoGetLocalSigningTime*(siginfo: ptr PopplerSignatureInfo): ptr GDateTime {.
    cdecl, importc: "poppler_signature_info_get_local_signing_time",
    header: "poppler-form-field.h".}
