// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PaymentNotesStruct extends FFFirebaseStruct {
  PaymentNotesStruct({
    DateTime? date,
    double? amount,
    String? mode,
    DocumentReference? memberRef,
    int? coins,
    int? points,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _date = date,
        _amount = amount,
        _mode = mode,
        _memberRef = memberRef,
        _coins = coins,
        _points = points,
        super(firestoreUtilData);

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "mode" field.
  String? _mode;
  String get mode => _mode ?? '';
  set mode(String? val) => _mode = val;

  bool hasMode() => _mode != null;

  // "memberRef" field.
  DocumentReference? _memberRef;
  DocumentReference? get memberRef => _memberRef;
  set memberRef(DocumentReference? val) => _memberRef = val;

  bool hasMemberRef() => _memberRef != null;

  // "coins" field.
  int? _coins;
  int get coins => _coins ?? 0;
  set coins(int? val) => _coins = val;

  void incrementCoins(int amount) => coins = coins + amount;

  bool hasCoins() => _coins != null;

  // "Points" field.
  int? _points;
  int get points => _points ?? 0;
  set points(int? val) => _points = val;

  void incrementPoints(int amount) => points = points + amount;

  bool hasPoints() => _points != null;

  static PaymentNotesStruct fromMap(Map<String, dynamic> data) =>
      PaymentNotesStruct(
        date: data['date'] as DateTime?,
        amount: castToType<double>(data['amount']),
        mode: data['mode'] as String?,
        memberRef: data['memberRef'] as DocumentReference?,
        coins: castToType<int>(data['coins']),
        points: castToType<int>(data['Points']),
      );

  static PaymentNotesStruct? maybeFromMap(dynamic data) => data is Map
      ? PaymentNotesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'date': _date,
        'amount': _amount,
        'mode': _mode,
        'memberRef': _memberRef,
        'coins': _coins,
        'Points': _points,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'mode': serializeParam(
          _mode,
          ParamType.String,
        ),
        'memberRef': serializeParam(
          _memberRef,
          ParamType.DocumentReference,
        ),
        'coins': serializeParam(
          _coins,
          ParamType.int,
        ),
        'Points': serializeParam(
          _points,
          ParamType.int,
        ),
      }.withoutNulls;

  static PaymentNotesStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaymentNotesStruct(
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        mode: deserializeParam(
          data['mode'],
          ParamType.String,
          false,
        ),
        memberRef: deserializeParam(
          data['memberRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Club', 'MembersClub'],
        ),
        coins: deserializeParam(
          data['coins'],
          ParamType.int,
          false,
        ),
        points: deserializeParam(
          data['Points'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PaymentNotesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaymentNotesStruct &&
        date == other.date &&
        amount == other.amount &&
        mode == other.mode &&
        memberRef == other.memberRef &&
        coins == other.coins &&
        points == other.points;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([date, amount, mode, memberRef, coins, points]);
}

PaymentNotesStruct createPaymentNotesStruct({
  DateTime? date,
  double? amount,
  String? mode,
  DocumentReference? memberRef,
  int? coins,
  int? points,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PaymentNotesStruct(
      date: date,
      amount: amount,
      mode: mode,
      memberRef: memberRef,
      coins: coins,
      points: points,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PaymentNotesStruct? updatePaymentNotesStruct(
  PaymentNotesStruct? paymentNotes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    paymentNotes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPaymentNotesStructData(
  Map<String, dynamic> firestoreData,
  PaymentNotesStruct? paymentNotes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (paymentNotes == null) {
    return;
  }
  if (paymentNotes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && paymentNotes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final paymentNotesData =
      getPaymentNotesFirestoreData(paymentNotes, forFieldValue);
  final nestedData =
      paymentNotesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = paymentNotes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPaymentNotesFirestoreData(
  PaymentNotesStruct? paymentNotes, [
  bool forFieldValue = false,
]) {
  if (paymentNotes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(paymentNotes.toMap());

  // Add any Firestore field values
  mapToFirestore(paymentNotes.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPaymentNotesListFirestoreData(
  List<PaymentNotesStruct>? paymentNotess,
) =>
    paymentNotess?.map((e) => getPaymentNotesFirestoreData(e, true)).toList() ??
    [];
