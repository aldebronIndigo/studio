import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_payments_c_p_widget.dart' show AddPaymentsCPWidget;
import 'package:flutter/material.dart';

class AddPaymentsCPModel extends FlutterFlowModel<AddPaymentsCPWidget> {
  ///  Local state fields for this page.

  bool? showCP = false;

  ChannelPartnersRecord? cpRecord;

  ///  State fields for stateful widgets in this page.

  var scannedNumber = '';
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  ChannelPartnersRecord? foundCP2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  ChannelPartnersRecord? foundCP;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
