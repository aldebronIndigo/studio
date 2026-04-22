import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'createprofile_widget.dart' show CreateprofileWidget;
import 'package:flutter/material.dart';

class CreateprofileModel extends FlutterFlowModel<CreateprofileWidget> {
  ///  Local state fields for this page.

  String? prifilePic =
      'https://fastly.picsum.photos/id/84/1280/848.jpg?hmac=YFRYDI4UsfbeTzI8ZakNOR98wVU7a-9a2tGF542539s';

  bool? showaddress = false;

  int? getAge = 0;

  LatLng? location;

  String? displayName = 'Name';

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataYfcre = false;
  FFUploadedFile uploadedLocalFile_uploadDataYfcre =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataYfcre = '';

  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for dateofBirth widget.
  FocusNode? dateofBirthFocusNode;
  TextEditingController? dateofBirthTextController;
  String? Function(BuildContext, String?)? dateofBirthTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
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
  // State field(s) for zipcode widget.
  FocusNode? zipcodeFocusNode;
  TextEditingController? zipcodeTextController;
  String? Function(BuildContext, String?)? zipcodeTextControllerValidator;
  // State field(s) for gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;
  // State field(s) for profession widget.
  FocusNode? professionFocusNode;
  TextEditingController? professionTextController;
  String? Function(BuildContext, String?)? professionTextControllerValidator;
  // State field(s) for intro widget.
  FocusNode? introFocusNode;
  TextEditingController? introTextController;
  String? Function(BuildContext, String?)? introTextControllerValidator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;
  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    dateofBirthFocusNode?.dispose();
    dateofBirthTextController?.dispose();

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

    zipcodeFocusNode?.dispose();
    zipcodeTextController?.dispose();

    professionFocusNode?.dispose();
    professionTextController?.dispose();

    introFocusNode?.dispose();
    introTextController?.dispose();
  }
}
