import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'paywall1_widget.dart' show Paywall1Widget;
import 'package:flutter/material.dart';

class Paywall1Model extends FlutterFlowModel<Paywall1Widget> {
  ///  Local state fields for this page.

  String? subscriptionType = 'Subscription';

  double? amount = 0.0;

  double? packageCost = 0.0;

  String? packageName = 'Package';

  bool? showcouponCode = false;

  bool? showpaymentButton = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for silvercheck widget.
  bool? silvercheckValue1;
  // State field(s) for silvercheck widget.
  bool? silvercheckValue2;
  // State field(s) for silvercheck widget.
  bool? silvercheckValue3;
  // State field(s) for couponcode widget.
  FocusNode? couponcodeFocusNode;
  TextEditingController? couponcodeTextController;
  String? Function(BuildContext, String?)? couponcodeTextControllerValidator;
  // Stores action output result for [Razorpay Payment] action in Button widget.
  String? razorpayPaymentId;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    couponcodeFocusNode?.dispose();
    couponcodeTextController?.dispose();
  }
}
