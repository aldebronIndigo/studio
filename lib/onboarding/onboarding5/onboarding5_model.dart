import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'onboarding5_widget.dart' show Onboarding5Widget;
import 'package:flutter/material.dart';

class Onboarding5Model extends FlutterFlowModel<Onboarding5Widget> {
  ///  Local state fields for this page.

  int? feedCounter = 1;

  String? profilePic;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadData67wImage = false;
  FFUploadedFile uploadedLocalFile_uploadData67wImage =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData67wImage = '';

  bool isDataUploading_uploadData67w = false;
  FFUploadedFile uploadedLocalFile_uploadData67w =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData67w = '';

  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;
  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
