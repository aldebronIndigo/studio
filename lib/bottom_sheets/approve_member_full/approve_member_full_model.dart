import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'approve_member_full_widget.dart' show ApproveMemberFullWidget;
import 'package:flutter/material.dart';

class ApproveMemberFullModel extends FlutterFlowModel<ApproveMemberFullWidget> {
  ///  Local state fields for this component.

  DocumentReference? selectedBranch;

  String? branchName = 'Branch';

  DateTime? currentDate;

  bool? showBranch = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for CourseApproved widget.
  FocusNode? courseApprovedFocusNode;
  TextEditingController? courseApprovedTextController;
  String? Function(BuildContext, String?)?
      courseApprovedTextControllerValidator;
  // State field(s) for StartDate widget.
  FocusNode? startDateFocusNode;
  TextEditingController? startDateTextController;
  String? Function(BuildContext, String?)? startDateTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for Coursefee widget.
  FocusNode? coursefeeFocusNode;
  TextEditingController? coursefeeTextController;
  String? Function(BuildContext, String?)? coursefeeTextControllerValidator;
  // State field(s) for courseFee widget.
  FocusNode? courseFeeFocusNode;
  TextEditingController? courseFeeTextController;
  String? Function(BuildContext, String?)? courseFeeTextControllerValidator;
  // State field(s) for RegistrationFee widget.
  FocusNode? registrationFeeFocusNode;
  TextEditingController? registrationFeeTextController;
  String? Function(BuildContext, String?)?
      registrationFeeTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  MembersRecord? foundMember;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  MembersRecord? memberCreated;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    courseApprovedFocusNode?.dispose();
    courseApprovedTextController?.dispose();

    startDateFocusNode?.dispose();
    startDateTextController?.dispose();

    coursefeeFocusNode?.dispose();
    coursefeeTextController?.dispose();

    courseFeeFocusNode?.dispose();
    courseFeeTextController?.dispose();

    registrationFeeFocusNode?.dispose();
    registrationFeeTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController6?.dispose();

    textFieldFocusNode2?.dispose();
    textController7?.dispose();

    textFieldFocusNode3?.dispose();
    textController8?.dispose();

    textFieldFocusNode4?.dispose();
    textController9?.dispose();
  }
}
