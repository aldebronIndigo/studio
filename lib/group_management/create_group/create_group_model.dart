import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_group_widget.dart' show CreateGroupWidget;
import 'package:flutter/material.dart';

class CreateGroupModel extends FlutterFlowModel<CreateGroupWidget> {
  ///  Local state fields for this page.

  String prifilePic =
      'https://fastly.picsum.photos/id/84/1280/848.jpg?hmac=YFRYDI4UsfbeTzI8ZakNOR98wVU7a-9a2tGF542539s';

  bool? showaddress = false;

  int? getAge = 0;

  LatLng? location;

  String coverImage =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/triyom-k29kof/assets/ips4unt07gyl/pexels-myersmc16-919317.jpg';

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataYfcrlogogr = false;
  FFUploadedFile uploadedLocalFile_uploadDataYfcrlogogr =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataYfcrlogogr = '';

  bool isDataUploading_uploadDataX9wgro = false;
  FFUploadedFile uploadedLocalFile_uploadDataX9wgro =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataX9wgro = '';

  // State field(s) for clubName widget.
  FocusNode? clubNameFocusNode;
  TextEditingController? clubNameTextController;
  String? Function(BuildContext, String?)? clubNameTextControllerValidator;
  // State field(s) for intro widget.
  FocusNode? introFocusNode1;
  TextEditingController? introTextController1;
  String? Function(BuildContext, String?)? introTextController1Validator;
  // State field(s) for clubType widget.
  String? clubTypeValue;
  FormFieldController<String>? clubTypeValueController;
  // State field(s) for membership widget.
  String? membershipValue;
  FormFieldController<String>? membershipValueController;
  // State field(s) for visibility widget.
  String? visibilityValue;
  FormFieldController<String>? visibilityValueController;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for intro widget.
  FocusNode? introFocusNode2;
  TextEditingController? introTextController2;
  String? Function(BuildContext, String?)? introTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    clubNameFocusNode?.dispose();
    clubNameTextController?.dispose();

    introFocusNode1?.dispose();
    introTextController1?.dispose();

    introFocusNode2?.dispose();
    introTextController2?.dispose();
  }
}
