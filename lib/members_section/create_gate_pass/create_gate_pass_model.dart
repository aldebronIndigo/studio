import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_gate_pass_widget.dart' show CreateGatePassWidget;
import 'package:flutter/material.dart';

class CreateGatePassModel extends FlutterFlowModel<CreateGatePassWidget> {
  ///  Local state fields for this page.

  bool? showguest = false;

  bool? showPassForm = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchBox widget.
  FocusNode? searchBoxFocusNode;
  TextEditingController? searchBoxTextController;
  String? Function(BuildContext, String?)? searchBoxTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  UsersRecord? foundUser;
  // State field(s) for startDate widget.
  FocusNode? startDateFocusNode;
  TextEditingController? startDateTextController;
  String? Function(BuildContext, String?)? startDateTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for startTime widget.
  FocusNode? startTimeFocusNode;
  TextEditingController? startTimeTextController;
  String? Function(BuildContext, String?)? startTimeTextControllerValidator;
  // State field(s) for endTime widget.
  FocusNode? endTimeFocusNode;
  TextEditingController? endTimeTextController;
  String? Function(BuildContext, String?)? endTimeTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for vehicleNumber widget.
  FocusNode? vehicleNumberFocusNode;
  TextEditingController? vehicleNumberTextController;
  String? Function(BuildContext, String?)? vehicleNumberTextControllerValidator;
  // State field(s) for maxPax widget.
  int? maxPaxValue;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;
  // State field(s) for maxTransfer widget.
  int? maxTransferValue;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  MemberPassesRecord? passCreated;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchBoxFocusNode?.dispose();
    searchBoxTextController?.dispose();

    startDateFocusNode?.dispose();
    startDateTextController?.dispose();

    startTimeFocusNode?.dispose();
    startTimeTextController?.dispose();

    endTimeFocusNode?.dispose();
    endTimeTextController?.dispose();

    vehicleNumberFocusNode?.dispose();
    vehicleNumberTextController?.dispose();
  }
}
