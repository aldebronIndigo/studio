import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'view_attendance_roll_widget.dart' show ViewAttendanceRollWidget;
import 'package:flutter/material.dart';

class ViewAttendanceRollModel
    extends FlutterFlowModel<ViewAttendanceRollWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
