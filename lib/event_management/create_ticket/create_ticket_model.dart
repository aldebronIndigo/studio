import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'create_ticket_widget.dart' show CreateTicketWidget;
import 'package:flutter/material.dart';

class CreateTicketModel extends FlutterFlowModel<CreateTicketWidget> {
  ///  Local state fields for this page.

  double? ticketAmount = 0.0;

  double? taxes = 0.0;

  double? totalAmount = 0.0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for registeredEmail widget.
  FocusNode? registeredEmailFocusNode;
  TextEditingController? registeredEmailTextController;
  String? Function(BuildContext, String?)?
      registeredEmailTextControllerValidator;
  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  // State field(s) for numberofTicket widget.
  int? numberofTicketValue;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TicketsRecord? ticketCreated;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  MembersClubRecord? foundMember;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    registeredEmailFocusNode?.dispose();
    registeredEmailTextController?.dispose();

    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
