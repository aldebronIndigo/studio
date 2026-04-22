import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'onboarding4_widget.dart' show Onboarding4Widget;
import 'package:flutter/material.dart';

class Onboarding4Model extends FlutterFlowModel<Onboarding4Widget> {
  ///  Local state fields for this page.

  int? feedCounter = 1;

  DateTime? dateofbirth;

  String? dateofbirthtext;

  String? address;

  String? venue;

  String? city;

  String? state;

  String? country;

  String? zipcode;

  LatLng? location;

  String? profession;

  ///  State fields for stateful widgets in this page.

  DateTime? datePicked;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  // State field(s) for profession widget.
  FocusNode? professionFocusNode;
  TextEditingController? professionTextController;
  String? Function(BuildContext, String?)? professionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    professionFocusNode?.dispose();
    professionTextController?.dispose();
  }
}
