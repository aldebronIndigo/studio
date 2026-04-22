import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'add_lead_admin_widget.dart' show AddLeadAdminWidget;
import 'package:flutter/material.dart';

class AddLeadAdminModel extends FlutterFlowModel<AddLeadAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for leadname widget.
  FocusNode? leadnameFocusNode;
  TextEditingController? leadnameTextController;
  String? Function(BuildContext, String?)? leadnameTextControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for locality widget.
  FocusNode? localityFocusNode;
  TextEditingController? localityTextController;
  String? Function(BuildContext, String?)? localityTextControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for profession widget.
  FocusNode? professionFocusNode;
  TextEditingController? professionTextController;
  String? Function(BuildContext, String?)? professionTextControllerValidator;
  // State field(s) for about widget.
  FocusNode? aboutFocusNode;
  TextEditingController? aboutTextController;
  String? Function(BuildContext, String?)? aboutTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    leadnameFocusNode?.dispose();
    leadnameTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    localityFocusNode?.dispose();
    localityTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    professionFocusNode?.dispose();
    professionTextController?.dispose();

    aboutFocusNode?.dispose();
    aboutTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
