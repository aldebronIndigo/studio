// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TransferDataSetStruct extends FFFirebaseStruct {
  TransferDataSetStruct({
    DocumentReference? originalRef,
    DocumentReference? transferedTo,
    DateTime? transferedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _originalRef = originalRef,
        _transferedTo = transferedTo,
        _transferedAt = transferedAt,
        super(firestoreUtilData);

  // "originalRef" field.
  DocumentReference? _originalRef;
  DocumentReference? get originalRef => _originalRef;
  set originalRef(DocumentReference? val) => _originalRef = val;

  bool hasOriginalRef() => _originalRef != null;

  // "transferedTo" field.
  DocumentReference? _transferedTo;
  DocumentReference? get transferedTo => _transferedTo;
  set transferedTo(DocumentReference? val) => _transferedTo = val;

  bool hasTransferedTo() => _transferedTo != null;

  // "transferedAt" field.
  DateTime? _transferedAt;
  DateTime? get transferedAt => _transferedAt;
  set transferedAt(DateTime? val) => _transferedAt = val;

  bool hasTransferedAt() => _transferedAt != null;

  static TransferDataSetStruct fromMap(Map<String, dynamic> data) =>
      TransferDataSetStruct(
        originalRef: data['originalRef'] as DocumentReference?,
        transferedTo: data['transferedTo'] as DocumentReference?,
        transferedAt: data['transferedAt'] as DateTime?,
      );

  static TransferDataSetStruct? maybeFromMap(dynamic data) => data is Map
      ? TransferDataSetStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'originalRef': _originalRef,
        'transferedTo': _transferedTo,
        'transferedAt': _transferedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'originalRef': serializeParam(
          _originalRef,
          ParamType.DocumentReference,
        ),
        'transferedTo': serializeParam(
          _transferedTo,
          ParamType.DocumentReference,
        ),
        'transferedAt': serializeParam(
          _transferedAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static TransferDataSetStruct fromSerializableMap(Map<String, dynamic> data) =>
      TransferDataSetStruct(
        originalRef: deserializeParam(
          data['originalRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        transferedTo: deserializeParam(
          data['transferedTo'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        transferedAt: deserializeParam(
          data['transferedAt'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'TransferDataSetStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransferDataSetStruct &&
        originalRef == other.originalRef &&
        transferedTo == other.transferedTo &&
        transferedAt == other.transferedAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([originalRef, transferedTo, transferedAt]);
}

TransferDataSetStruct createTransferDataSetStruct({
  DocumentReference? originalRef,
  DocumentReference? transferedTo,
  DateTime? transferedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TransferDataSetStruct(
      originalRef: originalRef,
      transferedTo: transferedTo,
      transferedAt: transferedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TransferDataSetStruct? updateTransferDataSetStruct(
  TransferDataSetStruct? transferDataSet, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    transferDataSet
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTransferDataSetStructData(
  Map<String, dynamic> firestoreData,
  TransferDataSetStruct? transferDataSet,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (transferDataSet == null) {
    return;
  }
  if (transferDataSet.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && transferDataSet.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final transferDataSetData =
      getTransferDataSetFirestoreData(transferDataSet, forFieldValue);
  final nestedData =
      transferDataSetData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = transferDataSet.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTransferDataSetFirestoreData(
  TransferDataSetStruct? transferDataSet, [
  bool forFieldValue = false,
]) {
  if (transferDataSet == null) {
    return {};
  }
  final firestoreData = mapToFirestore(transferDataSet.toMap());

  // Add any Firestore field values
  mapToFirestore(transferDataSet.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTransferDataSetListFirestoreData(
  List<TransferDataSetStruct>? transferDataSets,
) =>
    transferDataSets
        ?.map((e) => getTransferDataSetFirestoreData(e, true))
        .toList() ??
    [];
