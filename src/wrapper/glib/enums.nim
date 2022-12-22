import glib_types
##  This file is generated by glib-mkenums, do not modify it. This code is licensed under the same license as the containing project. Note that it links to GLib, so must comply with the LGPL linking clauses.



##  enumerations from "poppler-action.h"

proc popplerActionTypeGetType*(): GType {.cdecl,
                                       importc: "poppler_action_type_get_type",
                                       header: "poppler-enums.h".}
const
  POPPLER_TYPE_ACTION_TYPE* = (popplerActionTypeGetType())

proc popplerDestTypeGetType*(): GType {.cdecl,
                                     importc: "poppler_dest_type_get_type",
                                     header: "poppler-enums.h".}
const
  POPPLER_TYPE_DEST_TYPE* = (popplerDestTypeGetType())

proc popplerActionMovieOperationGetType*(): GType {.cdecl,
    importc: "poppler_action_movie_operation_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_ACTION_MOVIE_OPERATION* = (popplerActionMovieOperationGetType())

proc popplerActionLayerActionGetType*(): GType {.cdecl,
    importc: "poppler_action_layer_action_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_ACTION_LAYER_ACTION* = (popplerActionLayerActionGetType())

##  enumerations from "poppler-annot.h"

proc popplerAnnotTypeGetType*(): GType {.cdecl,
                                      importc: "poppler_annot_type_get_type",
                                      header: "poppler-enums.h".}
const
  POPPLER_TYPE_ANNOT_TYPE* = (popplerAnnotTypeGetType())

proc popplerAnnotFlagGetType*(): GType {.cdecl,
                                      importc: "poppler_annot_flag_get_type",
                                      header: "poppler-enums.h".}
const
  POPPLER_TYPE_ANNOT_FLAG* = (popplerAnnotFlagGetType())

proc popplerAnnotMarkupReplyTypeGetType*(): GType {.cdecl,
    importc: "poppler_annot_markup_reply_type_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_ANNOT_MARKUP_REPLY_TYPE* = (popplerAnnotMarkupReplyTypeGetType())

proc popplerAnnotExternalDataTypeGetType*(): GType {.cdecl,
    importc: "poppler_annot_external_data_type_get_type",
    header: "poppler-enums.h".}
const
  POPPLER_TYPE_ANNOT_EXTERNAL_DATA_TYPE* = (popplerAnnotExternalDataTypeGetType())

proc popplerAnnotTextStateGetType*(): GType {.cdecl,
    importc: "poppler_annot_text_state_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_ANNOT_TEXT_STATE* = (popplerAnnotTextStateGetType())

proc popplerAnnotFreeTextQuaddingGetType*(): GType {.cdecl,
    importc: "poppler_annot_free_text_quadding_get_type",
    header: "poppler-enums.h".}
const
  POPPLER_TYPE_ANNOT_FREE_TEXT_QUADDING* = (popplerAnnotFreeTextQuaddingGetType())

proc popplerAnnotStampIconGetType*(): GType {.cdecl,
    importc: "poppler_annot_stamp_icon_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_ANNOT_STAMP_ICON* = (popplerAnnotStampIconGetType())

##  enumerations from "poppler-document.h"

proc popplerPageLayoutGetType*(): GType {.cdecl,
                                       importc: "poppler_page_layout_get_type",
                                       header: "poppler-enums.h".}
const
  POPPLER_TYPE_PAGE_LAYOUT* = (popplerPageLayoutGetType())

proc popplerPageModeGetType*(): GType {.cdecl,
                                     importc: "poppler_page_mode_get_type",
                                     header: "poppler-enums.h".}
const
  POPPLER_TYPE_PAGE_MODE* = (popplerPageModeGetType())

proc popplerFontTypeGetType*(): GType {.cdecl,
                                     importc: "poppler_font_type_get_type",
                                     header: "poppler-enums.h".}
const
  POPPLER_TYPE_FONT_TYPE* = (popplerFontTypeGetType())

proc popplerViewerPreferencesGetType*(): GType {.cdecl,
    importc: "poppler_viewer_preferences_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_VIEWER_PREFERENCES* = (popplerViewerPreferencesGetType())

proc popplerPrintScalingGetType*(): GType {.cdecl,
    importc: "poppler_print_scaling_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_PRINT_SCALING* = (popplerPrintScalingGetType())

proc popplerPrintDuplexGetType*(): GType {.cdecl, importc: "poppler_print_duplex_get_type",
                                        header: "poppler-enums.h".}
const
  POPPLER_TYPE_PRINT_DUPLEX* = (popplerPrintDuplexGetType())

proc popplerPermissionsGetType*(): GType {.cdecl, importc: "poppler_permissions_get_type",
                                        header: "poppler-enums.h".}
const
  POPPLER_TYPE_PERMISSIONS* = (popplerPermissionsGetType())

proc popplerPdfSubtypeGetType*(): GType {.cdecl,
                                       importc: "poppler_pdf_subtype_get_type",
                                       header: "poppler-enums.h".}
const
  POPPLER_TYPE_PDF_SUBTYPE* = (popplerPdfSubtypeGetType())

proc popplerPdfPartGetType*(): GType {.cdecl, importc: "poppler_pdf_part_get_type",
                                    header: "poppler-enums.h".}
const
  POPPLER_TYPE_PDF_PART* = (popplerPdfPartGetType())

proc popplerPdfConformanceGetType*(): GType {.cdecl,
    importc: "poppler_pdf_conformance_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_PDF_CONFORMANCE* = (popplerPdfConformanceGetType())

##  enumerations from "poppler-form-field.h"

proc popplerSignatureStatusGetType*(): GType {.cdecl,
    importc: "poppler_signature_status_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_SIGNATURE_STATUS* = (popplerSignatureStatusGetType())

proc popplerCertificateStatusGetType*(): GType {.cdecl,
    importc: "poppler_certificate_status_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_CERTIFICATE_STATUS* = (popplerCertificateStatusGetType())

proc popplerSignatureValidationFlagsGetType*(): GType {.cdecl,
    importc: "poppler_signature_validation_flags_get_type",
    header: "poppler-enums.h".}
const
  POPPLER_TYPE_SIGNATURE_VALIDATION_FLAGS* = (
    popplerSignatureValidationFlagsGetType())

proc popplerFormFieldTypeGetType*(): GType {.cdecl,
    importc: "poppler_form_field_type_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_FORM_FIELD_TYPE* = (popplerFormFieldTypeGetType())

proc popplerFormButtonTypeGetType*(): GType {.cdecl,
    importc: "poppler_form_button_type_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_FORM_BUTTON_TYPE* = (popplerFormButtonTypeGetType())

proc popplerFormTextTypeGetType*(): GType {.cdecl,
    importc: "poppler_form_text_type_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_FORM_TEXT_TYPE* = (popplerFormTextTypeGetType())

proc popplerFormChoiceTypeGetType*(): GType {.cdecl,
    importc: "poppler_form_choice_type_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_FORM_CHOICE_TYPE* = (popplerFormChoiceTypeGetType())

proc popplerAdditionalActionTypeGetType*(): GType {.cdecl,
    importc: "poppler_additional_action_type_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_ADDITIONAL_ACTION_TYPE* = (popplerAdditionalActionTypeGetType())

##  enumerations from "poppler-movie.h"

proc popplerMoviePlayModeGetType*(): GType {.cdecl,
    importc: "poppler_movie_play_mode_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_MOVIE_PLAY_MODE* = (popplerMoviePlayModeGetType())

##  enumerations from "poppler-structure-element.h"

proc popplerStructureElementKindGetType*(): GType {.cdecl,
    importc: "poppler_structure_element_kind_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_STRUCTURE_ELEMENT_KIND* = (popplerStructureElementKindGetType())

proc popplerStructureGetTextFlagsGetType*(): GType {.cdecl,
    importc: "poppler_structure_get_text_flags_get_type",
    header: "poppler-enums.h".}
const
  POPPLER_TYPE_STRUCTURE_GET_TEXT_FLAGS* = (popplerStructureGetTextFlagsGetType())

proc popplerStructurePlacementGetType*(): GType {.cdecl,
    importc: "poppler_structure_placement_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_STRUCTURE_PLACEMENT* = (popplerStructurePlacementGetType())

proc popplerStructureWritingModeGetType*(): GType {.cdecl,
    importc: "poppler_structure_writing_mode_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_STRUCTURE_WRITING_MODE* = (popplerStructureWritingModeGetType())

proc popplerStructureBorderStyleGetType*(): GType {.cdecl,
    importc: "poppler_structure_border_style_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_STRUCTURE_BORDER_STYLE* = (popplerStructureBorderStyleGetType())

proc popplerStructureTextAlignGetType*(): GType {.cdecl,
    importc: "poppler_structure_text_align_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_STRUCTURE_TEXT_ALIGN* = (popplerStructureTextAlignGetType())

proc popplerStructureBlockAlignGetType*(): GType {.cdecl,
    importc: "poppler_structure_block_align_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_STRUCTURE_BLOCK_ALIGN* = (popplerStructureBlockAlignGetType())

proc popplerStructureInlineAlignGetType*(): GType {.cdecl,
    importc: "poppler_structure_inline_align_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_STRUCTURE_INLINE_ALIGN* = (popplerStructureInlineAlignGetType())

proc popplerStructureTextDecorationGetType*(): GType {.cdecl,
    importc: "poppler_structure_text_decoration_get_type",
    header: "poppler-enums.h".}
const
  POPPLER_TYPE_STRUCTURE_TEXT_DECORATION* = (
    popplerStructureTextDecorationGetType())

proc popplerStructureRubyAlignGetType*(): GType {.cdecl,
    importc: "poppler_structure_ruby_align_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_STRUCTURE_RUBY_ALIGN* = (popplerStructureRubyAlignGetType())

proc popplerStructureRubyPositionGetType*(): GType {.cdecl,
    importc: "poppler_structure_ruby_position_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_STRUCTURE_RUBY_POSITION* = (popplerStructureRubyPositionGetType())

proc popplerStructureGlyphOrientationGetType*(): GType {.cdecl,
    importc: "poppler_structure_glyph_orientation_get_type",
    header: "poppler-enums.h".}
const
  POPPLER_TYPE_STRUCTURE_GLYPH_ORIENTATION* = (
    popplerStructureGlyphOrientationGetType())

proc popplerStructureListNumberingGetType*(): GType {.cdecl,
    importc: "poppler_structure_list_numbering_get_type",
    header: "poppler-enums.h".}
const
  POPPLER_TYPE_STRUCTURE_LIST_NUMBERING* = (popplerStructureListNumberingGetType())

proc popplerStructureFormRoleGetType*(): GType {.cdecl,
    importc: "poppler_structure_form_role_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_STRUCTURE_FORM_ROLE* = (popplerStructureFormRoleGetType())

proc popplerStructureFormStateGetType*(): GType {.cdecl,
    importc: "poppler_structure_form_state_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_STRUCTURE_FORM_STATE* = (popplerStructureFormStateGetType())

proc popplerStructureTableScopeGetType*(): GType {.cdecl,
    importc: "poppler_structure_table_scope_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_STRUCTURE_TABLE_SCOPE* = (popplerStructureTableScopeGetType())

##  enumerations from "poppler.h"

proc popplerErrorGetType*(): GType {.cdecl, importc: "poppler_error_get_type",
                                  header: "poppler-enums.h".}
const
  POPPLER_TYPE_ERROR* = (popplerErrorGetType())

proc popplerPageTransitionTypeGetType*(): GType {.cdecl,
    importc: "poppler_page_transition_type_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_PAGE_TRANSITION_TYPE* = (popplerPageTransitionTypeGetType())

proc popplerPageTransitionAlignmentGetType*(): GType {.cdecl,
    importc: "poppler_page_transition_alignment_get_type",
    header: "poppler-enums.h".}
const
  POPPLER_TYPE_PAGE_TRANSITION_ALIGNMENT* = (
    popplerPageTransitionAlignmentGetType())

proc popplerPageTransitionDirectionGetType*(): GType {.cdecl,
    importc: "poppler_page_transition_direction_get_type",
    header: "poppler-enums.h".}
const
  POPPLER_TYPE_PAGE_TRANSITION_DIRECTION* = (
    popplerPageTransitionDirectionGetType())

proc popplerSelectionStyleGetType*(): GType {.cdecl,
    importc: "poppler_selection_style_get_type", header: "poppler-enums.h".}
const
  POPPLER_TYPE_SELECTION_STYLE* = (popplerSelectionStyleGetType())

proc popplerPrintFlagsGetType*(): GType {.cdecl,
                                       importc: "poppler_print_flags_get_type",
                                       header: "poppler-enums.h".}
const
  POPPLER_TYPE_PRINT_FLAGS* = (popplerPrintFlagsGetType())

proc popplerFindFlagsGetType*(): GType {.cdecl,
                                      importc: "poppler_find_flags_get_type",
                                      header: "poppler-enums.h".}
const
  POPPLER_TYPE_FIND_FLAGS* = (popplerFindFlagsGetType())

proc popplerBackendGetType*(): GType {.cdecl, importc: "poppler_backend_get_type",
                                    header: "poppler-enums.h".}
const
  POPPLER_TYPE_BACKEND* = (popplerBackendGetType())

##  Generated data ends here