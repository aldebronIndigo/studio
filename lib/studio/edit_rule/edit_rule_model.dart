import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_rule_widget.dart' show EditRuleWidget;
import 'package:flutter/material.dart';

class EditRuleModel extends FlutterFlowModel<EditRuleWidget> {
  ///  Local state fields for this page.

  int? ruleNumber = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for rule widget.
  FocusNode? ruleFocusNode;
  TextEditingController? ruleTextController;
  String? Function(BuildContext, String?)? ruleTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ruleFocusNode?.dispose();
    ruleTextController?.dispose();
  }
}
