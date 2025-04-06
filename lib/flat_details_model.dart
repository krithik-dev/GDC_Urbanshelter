import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'flat_details_widget.dart' show FlatDetailsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class FlatDetailsModel extends FlutterFlowModel<FlatDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for flat_type widget.
  String? flatTypeValue;
  FormFieldController<String>? flatTypeValueController;
  // State field(s) for flat_name widget.
  FocusNode? flatNameFocusNode;
  TextEditingController? flatNameTextController;
  String? Function(BuildContext, String?)? flatNameTextControllerValidator;
  String? _flatNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter an age for the patient.';
    }

    return null;
  }

  // State field(s) for flat_location widget.
  FocusNode? flatLocationFocusNode;
  TextEditingController? flatLocationTextController;
  String? Function(BuildContext, String?)? flatLocationTextControllerValidator;
  // State field(s) for flat_price widget.
  FocusNode? flatPriceFocusNode;
  TextEditingController? flatPriceTextController;
  String? Function(BuildContext, String?)? flatPriceTextControllerValidator;
  String? _flatPriceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the date of birth of the patient.';
    }

    return null;
  }

  // State field(s) for peopl_required widget.
  FocusNode? peoplRequiredFocusNode;
  TextEditingController? peoplRequiredTextController;
  final peoplRequiredMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? peoplRequiredTextControllerValidator;
  // State field(s) for bed_count widget.
  FocusNode? bedCountFocusNode;
  TextEditingController? bedCountTextController;
  final bedCountMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? bedCountTextControllerValidator;
  // State field(s) for bath_count widget.
  FocusNode? bathCountFocusNode;
  TextEditingController? bathCountTextController;
  final bathCountMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? bathCountTextControllerValidator;
  // State field(s) for Flat_area widget.
  FocusNode? flatAreaFocusNode;
  TextEditingController? flatAreaTextController;
  final flatAreaMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? flatAreaTextControllerValidator;
  // State field(s) for flat_description widget.
  FocusNode? flatDescriptionFocusNode;
  TextEditingController? flatDescriptionTextController;
  String? Function(BuildContext, String?)?
      flatDescriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {
    flatNameTextControllerValidator = _flatNameTextControllerValidator;
    flatPriceTextControllerValidator = _flatPriceTextControllerValidator;
  }

  @override
  void dispose() {
    flatNameFocusNode?.dispose();
    flatNameTextController?.dispose();

    flatLocationFocusNode?.dispose();
    flatLocationTextController?.dispose();

    flatPriceFocusNode?.dispose();
    flatPriceTextController?.dispose();

    peoplRequiredFocusNode?.dispose();
    peoplRequiredTextController?.dispose();

    bedCountFocusNode?.dispose();
    bedCountTextController?.dispose();

    bathCountFocusNode?.dispose();
    bathCountTextController?.dispose();

    flatAreaFocusNode?.dispose();
    flatAreaTextController?.dispose();

    flatDescriptionFocusNode?.dispose();
    flatDescriptionTextController?.dispose();
  }
}
