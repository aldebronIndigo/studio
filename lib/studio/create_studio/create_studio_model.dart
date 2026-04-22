import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'create_studio_widget.dart' show CreateStudioWidget;
import 'package:flutter/material.dart';

class CreateStudioModel extends FlutterFlowModel<CreateStudioWidget> {
  ///  Local state fields for this page.

  String prifilePic =
      'https://fastly.picsum.photos/id/84/1280/848.jpg?hmac=YFRYDI4UsfbeTzI8ZakNOR98wVU7a-9a2tGF542539s';

  bool? showaddress = false;

  int? getAge = 0;

  LatLng? location;

  String coverImage =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/triyom-k29kof/assets/ips4unt07gyl/pexels-myersmc16-919317.jpg';

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataYfcrlogo = false;
  FFUploadedFile uploadedLocalFile_uploadDataYfcrlogo =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataYfcrlogo = '';

  bool isDataUploading_uploadDataX9w = false;
  FFUploadedFile uploadedLocalFile_uploadDataX9w =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataX9w = '';

  // State field(s) for clubName widget.
  FocusNode? clubNameFocusNode;
  TextEditingController? clubNameTextController;
  String? Function(BuildContext, String?)? clubNameTextControllerValidator;
  // State field(s) for tagline widget.
  FocusNode? taglineFocusNode;
  TextEditingController? taglineTextController;
  String? Function(BuildContext, String?)? taglineTextControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for website widget.
  FocusNode? websiteFocusNode;
  TextEditingController? websiteTextController;
  String? Function(BuildContext, String?)? websiteTextControllerValidator;
  // State field(s) for extensions widget.
  FormFieldController<String>? extensionsValueController;
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
  // State field(s) for studioType widget.
  String? studioTypeValue;
  FormFieldController<String>? studioTypeValueController;
  // State field(s) for membership widget.
  String? membershipValue;
  FormFieldController<String>? membershipValueController;
  // State field(s) for intro widget.
  FocusNode? introFocusNode;
  TextEditingController? introTextController;
  String? Function(BuildContext, String?)? introTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  StudioRecord? studioCreated;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    clubNameFocusNode?.dispose();
    clubNameTextController?.dispose();

    taglineFocusNode?.dispose();
    taglineTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    websiteFocusNode?.dispose();
    websiteTextController?.dispose();

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

    introFocusNode?.dispose();
    introTextController?.dispose();
  }

  /// Additional helper methods.
  String? get extensionsValue => extensionsValueController?.value;
}
