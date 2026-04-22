import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_attendance_widget.dart' show ViewAttendanceWidget;
import 'package:flutter/material.dart';

class ViewAttendanceModel extends FlutterFlowModel<ViewAttendanceWidget> {
  ///  Local state fields for this component.

  int? coins = 0;

  int? points;

  double? amount = 0.0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
