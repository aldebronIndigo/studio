import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'edit_pass_widget.dart' show EditPassWidget;
import 'package:flutter/material.dart';

class EditPassModel extends FlutterFlowModel<EditPassWidget> {
  ///  Local state fields for this page.

  String coverImage =
      'https://fastly.picsum.photos/id/153/4763/3155.jpg?hmac=GvglcvSHy1CSmpkqqF-7VSPsc67CmYQZ1CY-do9rh_A';

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataFt4passUpdate = false;
  FFUploadedFile uploadedLocalFile_uploadDataFt4passUpdate =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataFt4passUpdate = '';

  // State field(s) for passName widget.
  FocusNode? passNameFocusNode;
  TextEditingController? passNameTextController;
  String? Function(BuildContext, String?)? passNameTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
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
  // State field(s) for passtype widget.
  String? passtypeValue;
  FormFieldController<String>? passtypeValueController;
  // State field(s) for category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // State field(s) for capacity widget.
  FocusNode? capacityFocusNode;
  TextEditingController? capacityTextController;
  String? Function(BuildContext, String?)? capacityTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for multibranch widget.
  bool? multibranchValue;
  // State field(s) for trialDays widget.
  FocusNode? trialDaysFocusNode;
  TextEditingController? trialDaysTextController;
  String? Function(BuildContext, String?)? trialDaysTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    passNameFocusNode?.dispose();
    passNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

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
