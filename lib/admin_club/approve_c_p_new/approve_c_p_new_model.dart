import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'approve_c_p_new_widget.dart' show ApproveCPNewWidget;
import 'package:flutter/material.dart';

class ApproveCPNewModel extends FlutterFlowModel<ApproveCPNewWidget> {
  ///  Local state fields for this page.

  int? groupType;

  int? cpSequence;

  int? chapterType;

  String? cpCode;

  CpStatus? approvedCP = CpStatus.Inactive;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Row widget.
  MemberSequenceRecord? foundSeq;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
