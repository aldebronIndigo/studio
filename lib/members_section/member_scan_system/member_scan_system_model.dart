import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'member_scan_system_widget.dart' show MemberScanSystemWidget;
import 'package:flutter/material.dart';

class MemberScanSystemModel extends FlutterFlowModel<MemberScanSystemWidget> {
  ///  Local state fields for this page.

  bool? showPhoneNumber = false;

  bool? hidescanner = false;

  bool? showOTP = false;

  String? randomOTP = '0';

  ///  State fields for stateful widgets in this page.

  var scannedReturn = '';
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  ChannelPartnersRecord? foundCP;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  LeadsRecord? foundLead;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  MembersClubRecord? createdProspect;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  ChannelPartnersRecord? foundCPphone;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  LeadsRecord? foundLead2;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  MembersClubRecord? createdProspect2;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
