// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FeesStruct extends FFFirebaseStruct {
  FeesStruct({
    String? option,
    String? currency,
    double? amount,
    String? frequency,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _option = option,
        _currency = currency,
        _amount = amount,
        _frequency = frequency,
        super(firestoreUtilData);

  // "option" field.
  String? _option;
  String get option => _option ?? '';
  set option(String? val) => _option = val;

  bool hasOption() => _option != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "frequency" field.
  String? _frequency;
  String get frequency => _frequency ?? '';
  set frequency(String? val) => _frequency = val;

  bool hasFrequency() => _frequency != null;

  static FeesStruct fromMap(Map<String, dynamic> data) => FeesStruct(
        option: data['option'] as String?,
        currency: data['currency'] as String?,
        amount: castToType<double>(data['amount']),
        frequency: data['frequency'] as String?,
      );

  static FeesStruct? maybeFromMap(dynamic data) =>
      data is Map ? FeesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'option': _option,
        'currency': _currency,
        'amount': _amount,
        'frequency': _frequency,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'option': serializeParam(
          _option,
          ParamType.String,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'frequency': serializeParam(
          _frequency,
          ParamType.String,
        ),
      }.withoutNulls;

  static FeesStruct fromSerializableMap(Map<String, dynamic> data) =>
      FeesStruct(
        option: deserializeParam(
          data['option'],
          ParamType.String,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        frequency: deserializeParam(
          data['frequency'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FeesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FeesStruct &&
        option == other.option &&
        currency == other.currency &&
        amount == other.amount &&
        frequency == other.frequency;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([option, currency, amount, frequency]);
}

FeesStruct createFeesStruct({
  String? option,
  String? currency,
  double? amount,
  String? frequency,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FeesStruct(
      option: option,
      currency: currency,
      amount: amount,
      frequency: frequency,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FeesStruct? updateFeesStruct(
  FeesStruct? fees, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    fees
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFeesStructData(
  Map<String, dynamic> firestoreData,
  FeesStruct? fees,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (fees == null) {
    return;
  }
  if (fees.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && fees.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final feesData = getFeesFirestoreData(fees, forFieldValue);
  final nestedData = feesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = fees.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFeesFirestoreData(
  FeesStruct? fees, [
  bool forFieldValue = false,
]) {
  if (fees == null) {
    return {};
  }
  final firestoreData = mapToFirestore(fees.toMap());

  // Add any Firestore field values
  mapToFirestore(fees.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFeesListFirestoreData(
  List<FeesStruct>? feess,
) =>
    feess?.map((e) => getFeesFirestoreData(e, true)).toList() ?? [];
