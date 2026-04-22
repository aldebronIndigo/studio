import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'studio_add_payment_widget.dart' show StudioAddPaymentWidget;
import 'package:flutter/material.dart';

class StudioAddPaymentModel extends FlutterFlowModel<StudioAddPaymentWidget> {
  ///  Local state fields for this component.

  int? coins = 0;

  int? points;

  double? outstandingamount = 0.0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for paymentType widget.
  String? paymentTypeValue;
  FormFieldController<String>? paymentTypeValueController;
  // State field(s) for method widget.
  String? methodValue;
  FormFieldController<String>? methodValueController;
  // State field(s) for state widget.
  FormFieldController<String>? stateValueController;
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // State field(s) for altPayments widget.
  FocusNode? altPaymentsFocusNode;
  TextEditingController? altPaymentsTextController;
  String? Function(BuildContext, String?)? altPaymentsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    amountFocusNode?.dispose();
    amountTextController?.dispose();

    altPaymentsFocusNode?.dispose();
    altPaymentsTextController?.dispose();
  }

  /// Additional helper methods.
  String? get stateValue => stateValueController?.value;
}
