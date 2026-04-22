import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'create_event_widget.dart' show CreateEventWidget;
import 'package:flutter/material.dart';

class CreateEventModel extends FlutterFlowModel<CreateEventWidget> {
  ///  Local state fields for this page.

  String? coverImage = 'https://picsum.photos/seed/165/600';

  bool? showLocation = false;

  LatLng? locationLatLang;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataSs7 = false;
  FFUploadedFile uploadedLocalFile_uploadDataSs7 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataSs7 = '';

  // State field(s) for nameEvent widget.
  FocusNode? nameEventFocusNode;
  TextEditingController? nameEventTextController;
  String? Function(BuildContext, String?)? nameEventTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for dateEvent widget.
  FocusNode? dateEventFocusNode;
  TextEditingController? dateEventTextController;
  String? Function(BuildContext, String?)? dateEventTextControllerValidator;
  // State field(s) for timeEvent widget.
  FocusNode? timeEventFocusNode;
  TextEditingController? timeEventTextController;
  String? Function(BuildContext, String?)? timeEventTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  // State field(s) for venueEvent widget.
  FocusNode? venueEventFocusNode;
  TextEditingController? venueEventTextController;
  String? Function(BuildContext, String?)? venueEventTextControllerValidator;
  // State field(s) for addressEvent widget.
  FocusNode? addressEventFocusNode;
  TextEditingController? addressEventTextController;
  String? Function(BuildContext, String?)? addressEventTextControllerValidator;
  // State field(s) for cityEvent widget.
  FocusNode? cityEventFocusNode;
  TextEditingController? cityEventTextController;
  String? Function(BuildContext, String?)? cityEventTextControllerValidator;
  // State field(s) for stateEvent widget.
  FocusNode? stateEventFocusNode;
  TextEditingController? stateEventTextController;
  String? Function(BuildContext, String?)? stateEventTextControllerValidator;
  // State field(s) for countryEvent widget.
  FocusNode? countryEventFocusNode;
  TextEditingController? countryEventTextController;
  String? Function(BuildContext, String?)? countryEventTextControllerValidator;
  // State field(s) for zipCode widget.
  FocusNode? zipCodeFocusNode;
  TextEditingController? zipCodeTextController;
  String? Function(BuildContext, String?)? zipCodeTextControllerValidator;
  // State field(s) for contactNumber widget.
  FocusNode? contactNumberFocusNode;
  TextEditingController? contactNumberTextController;
  String? Function(BuildContext, String?)? contactNumberTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;
  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameEventFocusNode?.dispose();
    nameEventTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    dateEventFocusNode?.dispose();
    dateEventTextController?.dispose();

    timeEventFocusNode?.dispose();
    timeEventTextController?.dispose();

    venueEventFocusNode?.dispose();
    venueEventTextController?.dispose();

    addressEventFocusNode?.dispose();
    addressEventTextController?.dispose();

    cityEventFocusNode?.dispose();
    cityEventTextController?.dispose();

    stateEventFocusNode?.dispose();
    stateEventTextController?.dispose();

    countryEventFocusNode?.dispose();
    countryEventTextController?.dispose();

    zipCodeFocusNode?.dispose();
    zipCodeTextController?.dispose();

    contactNumberFocusNode?.dispose();
    contactNumberTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
}
