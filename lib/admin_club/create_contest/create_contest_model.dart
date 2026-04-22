import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'create_contest_widget.dart' show CreateContestWidget;
import 'package:flutter/material.dart';

class CreateContestModel extends FlutterFlowModel<CreateContestWidget> {
  ///  Local state fields for this page.

  String openFor = 'Member';

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadData33z = false;
  FFUploadedFile uploadedLocalFile_uploadData33z =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData33z = '';

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
  // State field(s) for particpants widget.
  String? particpantsValue;
  FormFieldController<String>? particpantsValueController;
  // State field(s) for conditions widget.
  FocusNode? conditionsFocusNode;
  TextEditingController? conditionsTextController;
  String? Function(BuildContext, String?)? conditionsTextControllerValidator;

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
