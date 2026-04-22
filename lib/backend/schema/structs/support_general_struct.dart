// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SupportGeneralStruct extends FFFirebaseStruct {
  SupportGeneralStruct({
    String? revertedby,
    DateTime? createdAt,
    String? note,
    DocumentReference? refSupport,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _revertedby = revertedby,
        _createdAt = createdAt,
        _note = note,
        _refSupport = refSupport,
        super(firestoreUtilData);

  // "revertedby" field.
  String? _revertedby;
  String get revertedby => _revertedby ?? '';
  set revertedby(String? val) => _revertedby = val;

  bool hasRevertedby() => _revertedby != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  set note(String? val) => _note = val;

  bool hasNote() => _note != null;

  // "refSupport" field.
  DocumentReference? _refSupport;
  DocumentReference? get refSupport => _refSupport;
  set refSupport(DocumentReference? val) => _refSupport = val;

  bool hasRefSupport() => _refSupport != null;

  static SupportGeneralStruct fromMap(Map<String, dynamic> data) =>
      SupportGeneralStruct(
        revertedby: data['revertedby'] as String?,
        createdAt: data['createdAt'] as DateTime?,
        note: data['note'] as String?,
        refSupport: data['refSupport'] as DocumentReference?,
      );

  static SupportGeneralStruct? maybeFromMap(dynamic data) => data is Map
      ? SupportGeneralStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'revertedby': _revertedby,
        'createdAt': _createdAt,
        'note': _note,
        'refSupport': _refSupport,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'revertedby': serializeParam(
          _revertedby,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'note': serializeParam(
          _note,
          ParamType.String,
        ),
        'refSupport': serializeParam(
          _refSupport,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static SupportGeneralStruct fromSerializableMap(Map<String, dynamic> data) =>
      SupportGeneralStruct(
        revertedby: deserializeParam(
          data['revertedby'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.DateTime,
          false,
        ),
        note: deserializeParam(
          data['note'],
          ParamType.String,
          false,
        ),
        refSupport: deserializeParam(
          data['refSupport'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['supportTicketsGeneral'],
        ),
      );

  @override
  String toString() => 'SupportGeneralStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SupportGeneralStruct &&
        revertedby == other.revertedby &&
        createdAt == other.createdAt &&
        note == other.note &&
        refSupport == other.refSupport;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([revertedby, createdAt, note, refSupport]);
}

SupportGeneralStruct createSupportGeneralStruct({
  String? revertedby,
  DateTime? createdAt,
  String? note,
  DocumentReference? refSupport,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SupportGeneralStruct(
      revertedby: revertedby,
      createdAt: createdAt,
      note: note,
      refSupport: refSupport,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SupportGeneralStruct? updateSupportGeneralStruct(
  SupportGeneralStruct? supportGeneral, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    supportGeneral
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSupportGeneralStructData(
  Map<String, dynamic> firestoreData,
  SupportGeneralStruct? supportGeneral,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (supportGeneral == null) {
    return;
  }
  if (supportGeneral.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && supportGeneral.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final supportGeneralData =
      getSupportGeneralFirestoreData(supportGeneral, forFieldValue);
  final nestedData =
      supportGeneralData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = supportGeneral.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSupportGeneralFirestoreData(
  SupportGeneralStruct? supportGeneral, [
  bool forFieldValue = false,
]) {
  if (supportGeneral == null) {
    return {};
  }
  final firestoreData = mapToFirestore(supportGeneral.toMap());

  // Add any Firestore field values
  mapToFirestore(supportGeneral.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSupportGeneralListFirestoreData(
  List<SupportGeneralStruct>? supportGenerals,
) =>
    supportGenerals
        ?.map((e) => getSupportGeneralFirestoreData(e, true))
        .toList() ??
    [];
