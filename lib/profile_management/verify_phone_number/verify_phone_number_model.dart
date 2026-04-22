import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'verify_phone_number_widget.dart' show VerifyPhoneNumberWidget;
import 'package:flutter/material.dart';

class VerifyPhoneNumberModel extends FlutterFlowModel<VerifyPhoneNumberWidget> {
  ///  Local state fields for this page.

  bool? showemail = false;

  bool? showPhoneColum = false;

  bool? showVerificationBadge = false;

  bool? showemailMessage = false;

  bool? showOTP = false;

  int? randomOTP = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();
  }
}
