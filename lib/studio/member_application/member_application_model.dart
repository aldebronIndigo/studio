import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'member_application_widget.dart' show MemberApplicationWidget;
import 'package:flutter/material.dart';

class MemberApplicationModel extends FlutterFlowModel<MemberApplicationWidget> {
  ///  Local state fields for this page.

  DocumentReference? refCourse;

  DocumentReference? refBranch;

  String? passType = 'Weekly';

  bool? showcourse = false;

  String? courseName = 'Course';

  bool? showbranch = false;

  String? branchName = 'Branch';

  bool? showPasses = false;

  PassesRecord? selectedPass;

  String? passName = 'Pass Name';

  bool? multiBranch = false;

  bool? alreadyMember = false;

  bool? showselectedpass = false;

  bool? showselectedCourse = false;

  bool? showSelectedBranch = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for staffName widget.
  FocusNode? staffNameFocusNode;
  TextEditingController? staffNameTextController;
  String? Function(BuildContext, String?)? staffNameTextControllerValidator;
  // State field(s) for contactNumber widget.
  FocusNode? contactNumberFocusNode;
  TextEditingController? contactNumberTextController;
  String? Function(BuildContext, String?)? contactNumberTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  // State field(s) for gender widget.
  FocusNode? genderFocusNode;
  TextEditingController? genderTextController;
  String? Function(BuildContext, String?)? genderTextControllerValidator;
  // State field(s) for previousMember widget.
  bool? previousMemberValue;
  // State field(s) for memberID widget.
  FocusNode? memberIDFocusNode;
  TextEditingController? memberIDTextController;
  String? Function(BuildContext, String?)? memberIDTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  MembersRecord? foundMember;
  // State field(s) for termsBox widget.
  bool? termsBoxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    staffNameFocusNode?.dispose();
    staffNameTextController?.dispose();

    contactNumberFocusNode?.dispose();
    contactNumberTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    ageFocusNode?.dispose();
    ageTextController?.dispose();

    genderFocusNode?.dispose();
    genderTextController?.dispose();

    memberIDFocusNode?.dispose();
    memberIDTextController?.dispose();
  }
}
