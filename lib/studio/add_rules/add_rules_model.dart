import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_rules_widget.dart' show AddRulesWidget;
import 'package:flutter/material.dart';

class AddRulesModel extends FlutterFlowModel<AddRulesWidget> {
  ///  Local state fields for this page.

  int? ruleNumber = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in addRules widget.
  StudioSequencesRecord? foundSeq;
  // State field(s) for rule widget.
  FocusNode? ruleFocusNode;
  TextEditingController? ruleTextController;
  String? Function(BuildContext, String?)? ruleTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  RulesStudioRecord? ruleCreated;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ruleFocusNode?.dispose();
    ruleTextController?.dispose();
  }
}
