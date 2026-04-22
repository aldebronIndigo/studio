import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'staff_account_widget.dart' show StaffAccountWidget;
import 'package:flutter/material.dart';

class StaffAccountModel extends FlutterFlowModel<StaffAccountWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for designation widget.
  FocusNode? designationFocusNode;
  TextEditingController? designationTextController;
  String? Function(BuildContext, String?)? designationTextControllerValidator;
  // State field(s) for joingDate widget.
  FocusNode? joingDateFocusNode;
  TextEditingController? joingDateTextController;
  String? Function(BuildContext, String?)? joingDateTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for salary widget.
  FocusNode? salaryFocusNode;
  TextEditingController? salaryTextController;
  String? Function(BuildContext, String?)? salaryTextControllerValidator;
  // State field(s) for paymentType widget.
  String? paymentTypeValue;
  FormFieldController<String>? paymentTypeValueController;
  // State field(s) for shiftStart widget.
  FocusNode? shiftStartFocusNode;
  TextEditingController? shiftStartTextController;
  String? Function(BuildContext, String?)? shiftStartTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for shiftEnd widget.
  FocusNode? shiftEndFocusNode;
  TextEditingController? shiftEndTextController;
  String? Function(BuildContext, String?)? shiftEndTextControllerValidator;
  DateTime? datePicked3;
  // State field(s) for officeEmail widget.
  FocusNode? officeEmailFocusNode;
  TextEditingController? officeEmailTextController;
  String? Function(BuildContext, String?)? officeEmailTextControllerValidator;
  // State field(s) for officePhone widget.
  FocusNode? officePhoneFocusNode;
  TextEditingController? officePhoneTextController;
  String? Function(BuildContext, String?)? officePhoneTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    designationFocusNode?.dispose();
    designationTextController?.dispose();

    joingDateFocusNode?.dispose();
    joingDateTextController?.dispose();

    salaryFocusNode?.dispose();
    salaryTextController?.dispose();

    shiftStartFocusNode?.dispose();
    shiftStartTextController?.dispose();

    shiftEndFocusNode?.dispose();
    shiftEndTextController?.dispose();

    officeEmailFocusNode?.dispose();
    officeEmailTextController?.dispose();

    officePhoneFocusNode?.dispose();
    officePhoneTextController?.dispose();
  }
}
