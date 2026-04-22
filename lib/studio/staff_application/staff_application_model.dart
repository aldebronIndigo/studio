import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'staff_application_widget.dart' show StaffApplicationWidget;
import 'package:flutter/material.dart';

class StaffApplicationModel extends FlutterFlowModel<StaffApplicationWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for staffName widget.
  FocusNode? staffNameFocusNode;
  TextEditingController? staffNameTextController;
  String? Function(BuildContext, String?)? staffNameTextControllerValidator;
  // State field(s) for expectedSalary widget.
  FocusNode? expectedSalaryFocusNode;
  TextEditingController? expectedSalaryTextController;
  String? Function(BuildContext, String?)?
      expectedSalaryTextControllerValidator;
  // State field(s) for frequency widget.
  String? frequencyValue;
  FormFieldController<String>? frequencyValueController;
  // State field(s) for contactNumber widget.
  FocusNode? contactNumberFocusNode;
  TextEditingController? contactNumberTextController;
  String? Function(BuildContext, String?)? contactNumberTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for dateofbirth widget.
  FocusNode? dateofbirthFocusNode;
  TextEditingController? dateofbirthTextController;
  String? Function(BuildContext, String?)? dateofbirthTextControllerValidator;
  // State field(s) for staffRole widget.
  String? staffRoleValue;
  FormFieldController<String>? staffRoleValueController;
  bool isDataUploading_uploadDataBx7 = false;
  FFUploadedFile uploadedLocalFile_uploadDataBx7 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataBx7 = '';

  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    staffNameFocusNode?.dispose();
    staffNameTextController?.dispose();

    expectedSalaryFocusNode?.dispose();
    expectedSalaryTextController?.dispose();

    contactNumberFocusNode?.dispose();
    contactNumberTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    dateofbirthFocusNode?.dispose();
    dateofbirthTextController?.dispose();
  }
}
