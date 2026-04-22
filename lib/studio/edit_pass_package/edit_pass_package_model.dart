import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'edit_pass_package_widget.dart' show EditPassPackageWidget;
import 'package:flutter/material.dart';

class EditPassPackageModel extends FlutterFlowModel<EditPassPackageWidget> {
  ///  Local state fields for this page.

  double? firstSum = 0.0;

  double? taxamount = 0.0;

  double? finalSum = 0.0;

  double? emiAmount = 0.0;

  double? taxonRegistration = 0.0;

  double? taxonfee = 0.0;

  double? firstEMI = 0.0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for packageName widget.
  FocusNode? packageNameFocusNode;
  TextEditingController? packageNameTextController;
  String? Function(BuildContext, String?)? packageNameTextControllerValidator;
  // State field(s) for frequency widget.
  String? frequencyValue;
  FormFieldController<String>? frequencyValueController;
  // State field(s) for Amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // State field(s) for registrationFee widget.
  FocusNode? registrationFeeFocusNode;
  TextEditingController? registrationFeeTextController;
  String? Function(BuildContext, String?)?
      registrationFeeTextControllerValidator;
  // State field(s) for existingMemberDiscount widget.
  bool? existingMemberDiscountValue;
  // State field(s) for taxable widget.
  bool? taxableValue;
  // State field(s) for taxrate widget.
  FocusNode? taxrateFocusNode;
  TextEditingController? taxrateTextController;
  String? Function(BuildContext, String?)? taxrateTextControllerValidator;
  // State field(s) for totalsum widget.
  FocusNode? totalsumFocusNode;
  TextEditingController? totalsumTextController;
  String? Function(BuildContext, String?)? totalsumTextControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for emiAmount widget.
  FocusNode? emiAmountFocusNode;
  TextEditingController? emiAmountTextController;
  String? Function(BuildContext, String?)? emiAmountTextControllerValidator;
  // State field(s) for firstEMI widget.
  FocusNode? firstEMIFocusNode;
  TextEditingController? firstEMITextController;
  String? Function(BuildContext, String?)? firstEMITextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    packageNameFocusNode?.dispose();
    packageNameTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();

    registrationFeeFocusNode?.dispose();
    registrationFeeTextController?.dispose();

    taxrateFocusNode?.dispose();
    taxrateTextController?.dispose();

    totalsumFocusNode?.dispose();
    totalsumTextController?.dispose();

    emiAmountFocusNode?.dispose();
    emiAmountTextController?.dispose();

    firstEMIFocusNode?.dispose();
    firstEMITextController?.dispose();
  }
}
