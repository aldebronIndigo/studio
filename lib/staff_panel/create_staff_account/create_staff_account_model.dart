import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'create_staff_account_widget.dart' show CreateStaffAccountWidget;
import 'package:flutter/material.dart';

class CreateStaffAccountModel
    extends FlutterFlowModel<CreateStaffAccountWidget> {
  ///  Local state fields for this page.

  DateTime? dob;

  ///  State fields for stateful widgets in this page.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for department widget.
  String? departmentValue;
  FormFieldController<String>? departmentValueController;
  // State field(s) for venue widget.
  FocusNode? venueFocusNode;
  TextEditingController? venueTextController;
  String? Function(BuildContext, String?)? venueTextControllerValidator;
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for state widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateTextController;
  String? Function(BuildContext, String?)? stateTextControllerValidator;
  // State field(s) for country widget.
  FocusNode? countryFocusNode;
  TextEditingController? countryTextController;
  String? Function(BuildContext, String?)? countryTextControllerValidator;
  // State field(s) for zipCode widget.
  FocusNode? zipCodeFocusNode;
  TextEditingController? zipCodeTextController;
  String? Function(BuildContext, String?)? zipCodeTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for officeEmail widget.
  FocusNode? officeEmailFocusNode;
  TextEditingController? officeEmailTextController;
  String? Function(BuildContext, String?)? officeEmailTextControllerValidator;
  // State field(s) for officePhone widget.
  FocusNode? officePhoneFocusNode;
  TextEditingController? officePhoneTextController;
  String? Function(BuildContext, String?)? officePhoneTextControllerValidator;
  // State field(s) for dateofBirth widget.
  FocusNode? dateofBirthFocusNode;
  TextEditingController? dateofBirthTextController;
  String? Function(BuildContext, String?)? dateofBirthTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;
  // State field(s) for uploadResume widget.
  FocusNode? uploadResumeFocusNode;
  TextEditingController? uploadResumeTextController;
  String? Function(BuildContext, String?)? uploadResumeTextControllerValidator;
  bool isDataUploading_uploadDataE0x = false;
  FFUploadedFile uploadedLocalFile_uploadDataE0x =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataE0x = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    venueFocusNode?.dispose();
    venueTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    stateFocusNode?.dispose();
    stateTextController?.dispose();

    countryFocusNode?.dispose();
    countryTextController?.dispose();

    zipCodeFocusNode?.dispose();
    zipCodeTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    officeEmailFocusNode?.dispose();
    officeEmailTextController?.dispose();

    officePhoneFocusNode?.dispose();
    officePhoneTextController?.dispose();

    dateofBirthFocusNode?.dispose();
    dateofBirthTextController?.dispose();

    uploadResumeFocusNode?.dispose();
    uploadResumeTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
