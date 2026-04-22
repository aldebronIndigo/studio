import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'approve_member_widget.dart' show ApproveMemberWidget;
import 'package:flutter/material.dart';

class ApproveMemberModel extends FlutterFlowModel<ApproveMemberWidget> {
  ///  Local state fields for this page.

  MemberStatus? memberStatus = MemberStatus.Prospect;

  String? status = 'Prospect';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Row widget.
  PassesRecord? foundPass;
  // Stores action output result for [Firestore Query - Query a collection] action in Row widget.
  CoursesRecord? foundCourse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
