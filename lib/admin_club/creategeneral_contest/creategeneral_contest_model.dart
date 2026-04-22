import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'creategeneral_contest_widget.dart' show CreategeneralContestWidget;
import 'package:flutter/material.dart';

class CreategeneralContestModel
    extends FlutterFlowModel<CreategeneralContestWidget> {
  ///  Local state fields for this page.

  String openFor = 'Member';

  int? rewardpoints = 0;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadData33zopen = false;
  FFUploadedFile uploadedLocalFile_uploadData33zopen =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData33zopen = '';

  // State field(s) for Title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for Challenge widget.
  FocusNode? challengeFocusNode;
  TextEditingController? challengeTextController;
  String? Function(BuildContext, String?)? challengeTextControllerValidator;
  // State field(s) for startDate widget.
  FocusNode? startDateFocusNode;
  TextEditingController? startDateTextController;
  String? Function(BuildContext, String?)? startDateTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for endDate widget.
  FocusNode? endDateFocusNode;
  TextEditingController? endDateTextController;
  String? Function(BuildContext, String?)? endDateTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for rewardPoints widget.
  FocusNode? rewardPointsFocusNode;
  TextEditingController? rewardPointsTextController;
  String? Function(BuildContext, String?)? rewardPointsTextControllerValidator;
  // State field(s) for conditions widget.
  FocusNode? conditionsFocusNode;
  TextEditingController? conditionsTextController;
  String? Function(BuildContext, String?)? conditionsTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  GeneralContestsRecord? contestCreated;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleFocusNode?.dispose();
    titleTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    challengeFocusNode?.dispose();
    challengeTextController?.dispose();

    startDateFocusNode?.dispose();
    startDateTextController?.dispose();

    endDateFocusNode?.dispose();
    endDateTextController?.dispose();

    rewardPointsFocusNode?.dispose();
    rewardPointsTextController?.dispose();

    conditionsFocusNode?.dispose();
    conditionsTextController?.dispose();
  }
}
