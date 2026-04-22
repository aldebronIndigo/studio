import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'edit_course_widget.dart' show EditCourseWidget;
import 'package:flutter/material.dart';

class EditCourseModel extends FlutterFlowModel<EditCourseWidget> {
  ///  Local state fields for this page.

  String coverImage =
      'https://fastly.picsum.photos/id/153/4763/3155.jpg?hmac=GvglcvSHy1CSmpkqqF-7VSPsc67CmYQZ1CY-do9rh_A';

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataFt4upd = false;
  FFUploadedFile uploadedLocalFile_uploadDataFt4upd =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataFt4upd = '';

  // State field(s) for CourseName widget.
  FocusNode? courseNameFocusNode;
  TextEditingController? courseNameTextController;
  String? Function(BuildContext, String?)? courseNameTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for startDate widget.
  FocusNode? startDateFocusNode;
  TextEditingController? startDateTextController;
  String? Function(BuildContext, String?)? startDateTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for endDate widget.
  FocusNode? endDateFocusNode;
  TextEditingController? endDateTextController;
  String? Function(BuildContext, String?)? endDateTextControllerValidator;
  // State field(s) for totaldays widget.
  FocusNode? totaldaysFocusNode;
  TextEditingController? totaldaysTextController;
  String? Function(BuildContext, String?)? totaldaysTextControllerValidator;
  // State field(s) for numberofSessions widget.
  FocusNode? numberofSessionsFocusNode;
  TextEditingController? numberofSessionsTextController;
  String? Function(BuildContext, String?)?
      numberofSessionsTextControllerValidator;
  // State field(s) for hourspersession widget.
  FocusNode? hourspersessionFocusNode;
  TextEditingController? hourspersessionTextController;
  String? Function(BuildContext, String?)?
      hourspersessionTextControllerValidator;
  // State field(s) for totalhours widget.
  FocusNode? totalhoursFocusNode;
  TextEditingController? totalhoursTextController;
  String? Function(BuildContext, String?)? totalhoursTextControllerValidator;
  // State field(s) for level widget.
  String? levelValue;
  FormFieldController<String>? levelValueController;
  // State field(s) for category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // State field(s) for capacity widget.
  FocusNode? capacityFocusNode;
  TextEditingController? capacityTextController;
  String? Function(BuildContext, String?)? capacityTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for trialDays widget.
  FocusNode? trialDaysFocusNode;
  TextEditingController? trialDaysTextController;
  String? Function(BuildContext, String?)? trialDaysTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    courseNameFocusNode?.dispose();
    courseNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    startDateFocusNode?.dispose();
    startDateTextController?.dispose();

    endDateFocusNode?.dispose();
    endDateTextController?.dispose();

    totaldaysFocusNode?.dispose();
    totaldaysTextController?.dispose();

    numberofSessionsFocusNode?.dispose();
    numberofSessionsTextController?.dispose();

    hourspersessionFocusNode?.dispose();
    hourspersessionTextController?.dispose();

    totalhoursFocusNode?.dispose();
    totalhoursTextController?.dispose();

    capacityFocusNode?.dispose();
    capacityTextController?.dispose();

    trialDaysFocusNode?.dispose();
    trialDaysTextController?.dispose();
  }
}
