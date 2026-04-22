import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'onboarding3_widget.dart' show Onboarding3Widget;
import 'package:flutter/material.dart';

class Onboarding3Model extends FlutterFlowModel<Onboarding3Widget> {
  ///  Local state fields for this page.

  int? feedCounter = 1;

  String? firstName;

  String? secondName;

  String? displayName;

  String? phoneNumber;

  ///  State fields for stateful widgets in this page.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
