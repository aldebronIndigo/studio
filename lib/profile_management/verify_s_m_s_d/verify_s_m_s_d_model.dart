import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'verify_s_m_s_d_widget.dart' show VerifySMSDWidget;
import 'package:flutter/material.dart';

class VerifySMSDModel extends FlutterFlowModel<VerifySMSDWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
