// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CPPointTransactionsStruct extends FFFirebaseStruct {
  CPPointTransactionsStruct({
    DocumentReference? cpRef,
    DateTime? dateused,
    int? points,
    double? amount,
    int? coins,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cpRef = cpRef,
        _dateused = dateused,
        _points = points,
        _amount = amount,
        _coins = coins,
        super(firestoreUtilData);

  // "cpRef" field.
  DocumentReference? _cpRef;
  DocumentReference? get cpRef => _cpRef;
  set cpRef(DocumentReference? val) => _cpRef = val;

  bool hasCpRef() => _cpRef != null;

  // "dateused" field.
  DateTime? _dateused;
  DateTime? get dateused => _dateused;
  set dateused(DateTime? val) => _dateused = val;

  bool hasDateused() => _dateused != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  set points(int? val) => _points = val;

  void incrementPoints(int amount) => points = points + amount;

  bool hasPoints() => _points != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "coins" field.
  int? _coins;
  int get coins => _coins ?? 0;
  set coins(int? val) => _coins = val;

  void incrementCoins(int amount) => coins = coins + amount;

  bool hasCoins() => _coins != null;

  static CPPointTransactionsStruct fromMap(Map<String, dynamic> data) =>
      CPPointTransactionsStruct(
        cpRef: data['cpRef'] as DocumentReference?,
        dateused: data['dateused'] as DateTime?,
        points: castToType<int>(data['points']),
        amount: castToType<double>(data['amount']),
        coins: castToType<int>(data['coins']),
      );

  static CPPointTransactionsStruct? maybeFromMap(dynamic data) => data is Map
      ? CPPointTransactionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'cpRef': _cpRef,
        'dateused': _dateused,
        'points': _points,
        'amount': _amount,
        'coins': _coins,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cpRef': serializeParam(
          _cpRef,
          ParamType.DocumentReference,
        ),
        'dateused': serializeParam(
          _dateused,
          ParamType.DateTime,
        ),
        'points': serializeParam(
          _points,
          ParamType.int,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'coins': serializeParam(
          _coins,
          ParamType.int,
        ),
      }.withoutNulls;

  static CPPointTransactionsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CPPointTransactionsStruct(
        cpRef: deserializeParam(
          data['cpRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Club', 'channelPartners'],
        ),
        dateused: deserializeParam(
          data['dateused'],
          ParamType.DateTime,
          false,
        ),
        points: deserializeParam(
          data['points'],
          ParamType.int,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        coins: deserializeParam(
          data['coins'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CPPointTransactionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CPPointTransactionsStruct &&
        cpRef == other.cpRef &&
        dateused == other.dateused &&
        points == other.points &&
        amount == other.amount &&
        coins == other.coins;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([cpRef, dateused, points, amount, coins]);
}

CPPointTransactionsStruct createCPPointTransactionsStruct({
  DocumentReference? cpRef,
  DateTime? dateused,
  int? points,
  double? amount,
  int? coins,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CPPointTransactionsStruct(
      cpRef: cpRef,
      dateused: dateused,
      points: points,
      amount: amount,
      coins: coins,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CPPointTransactionsStruct? updateCPPointTransactionsStruct(
  CPPointTransactionsStruct? cPPointTransactions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cPPointTransactions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCPPointTransactionsStructData(
  Map<String, dynamic> firestoreData,
  CPPointTransactionsStruct? cPPointTransactions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cPPointTransactions == null) {
    return;
  }
  if (cPPointTransactions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cPPointTransactions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cPPointTransactionsData =
      getCPPointTransactionsFirestoreData(cPPointTransactions, forFieldValue);
  final nestedData =
      cPPointTransactionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      cPPointTransactions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCPPointTransactionsFirestoreData(
  CPPointTransactionsStruct? cPPointTransactions, [
  bool forFieldValue = false,
]) {
  if (cPPointTransactions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cPPointTransactions.toMap());

  // Add any Firestore field values
  mapToFirestore(cPPointTransactions.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCPPointTransactionsListFirestoreData(
  List<CPPointTransactionsStruct>? cPPointTransactionss,
) =>
    cPPointTransactionss
        ?.map((e) => getCPPointTransactionsFirestoreData(e, true))
        .toList() ??
    [];
