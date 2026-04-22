import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'create_card_widget.dart' show CreateCardWidget;
import 'package:flutter/material.dart';

class CreateCardModel extends FlutterFlowModel<CreateCardWidget> {
  ///  Local state fields for this page.

  String? first4 = '1000';

  int? slab = 0;

  int? referralType = 0;

  int? paymentMode = 0;

  int? memberSequence = 10000;

  String? profilePic;

  String? memberName;

  String? formattedCardNumber;

  String? cardNumber;

  bool? showCard = false;

  int? memberNumber = 1;

  ///  State fields for stateful widgets in this page.

  // State field(s) for slab widget.
  String? slabValue;
  FormFieldController<String>? slabValueController;
  // State field(s) for referral widget.
  String? referralValue;
  FormFieldController<String>? referralValueController;
  // State field(s) for plan widget.
  String? planValue;
  FormFieldController<String>? planValueController;
  // State field(s) for status widget.
  String? statusValue;
  FormFieldController<String>? statusValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  MemberSequenceRecord? foundSequece;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
