import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'emergency_details_widget.dart' show EmergencyDetailsWidget;
import 'package:flutter/material.dart';

class EmergencyDetailsModel extends FlutterFlowModel<EmergencyDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for bloodGroup widget.
  String? bloodGroupValue;
  FormFieldController<String>? bloodGroupValueController;
  // State field(s) for emergContPer1 widget.
  FocusNode? emergContPer1FocusNode;
  TextEditingController? emergContPer1TextController;
  String? Function(BuildContext, String?)? emergContPer1TextControllerValidator;
  // State field(s) for emephone1 widget.
  FocusNode? emephone1FocusNode;
  TextEditingController? emephone1TextController;
  String? Function(BuildContext, String?)? emephone1TextControllerValidator;
  // State field(s) for relat1 widget.
  String? relat1Value;
  FormFieldController<String>? relat1ValueController;
  // State field(s) for emergContPer2 widget.
  FocusNode? emergContPer2FocusNode;
  TextEditingController? emergContPer2TextController;
  String? Function(BuildContext, String?)? emergContPer2TextControllerValidator;
  // State field(s) for emephone2 widget.
  FocusNode? emephone2FocusNode;
  TextEditingController? emephone2TextController;
  String? Function(BuildContext, String?)? emephone2TextControllerValidator;
  // State field(s) for relat2 widget.
  String? relat2Value;
  FormFieldController<String>? relat2ValueController;
  // State field(s) for medicalcond widget.
  FocusNode? medicalcondFocusNode;
  TextEditingController? medicalcondTextController;
  String? Function(BuildContext, String?)? medicalcondTextControllerValidator;
  // State field(s) for allergies widget.
  FocusNode? allergiesFocusNode;
  TextEditingController? allergiesTextController;
  String? Function(BuildContext, String?)? allergiesTextControllerValidator;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emergContPer1FocusNode?.dispose();
    emergContPer1TextController?.dispose();

    emephone1FocusNode?.dispose();
    emephone1TextController?.dispose();

    emergContPer2FocusNode?.dispose();
    emergContPer2TextController?.dispose();

    emephone2FocusNode?.dispose();
    emephone2TextController?.dispose();

    medicalcondFocusNode?.dispose();
    medicalcondTextController?.dispose();

    allergiesFocusNode?.dispose();
    allergiesTextController?.dispose();
  }
}
