import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pass_scanner_widget.dart' show PassScannerWidget;
import 'package:flutter/material.dart';

class PassScannerModel extends FlutterFlowModel<PassScannerWidget> {
  ///  Local state fields for this page.

  bool? hideScanner = false;

  bool? showResult = false;

  ///  State fields for stateful widgets in this page.

  var scannedData = '';
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  MemberPassesRecord? foundPass;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
