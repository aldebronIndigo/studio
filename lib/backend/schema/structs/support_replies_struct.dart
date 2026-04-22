// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SupportRepliesStruct extends FFFirebaseStruct {
  SupportRepliesStruct({
    DocumentReference? refTicket,
    String? revertedby,
    DateTime? createdAt,
    String? note,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _refTicket = refTicket,
        _revertedby = revertedby,
        _createdAt = createdAt,
        _note = note,
        super(firestoreUtilData);

  // "refTicket" field.
  DocumentReference? _refTicket;
  DocumentReference? get refTicket => _refTicket;
  set refTicket(DocumentReference? val) => _refTicket = val;

  bool hasRefTicket() => _refTicket != null;

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

  static SupportRepliesStruct fromMap(Map<String, dynamic> data) =>
      SupportRepliesStruct(
        refTicket: data['refTicket'] as DocumentReference?,
        revertedby: data['revertedby'] as String?,
        createdAt: data['createdAt'] as DateTime?,
        note: data['note'] as String?,
      );

  static SupportRepliesStruct? maybeFromMap(dynamic data) => data is Map
      ? SupportRepliesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'refTicket': _refTicket,
        'revertedby': _revertedby,
        'createdAt': _createdAt,
        'note': _note,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'refTicket': serializeParam(
          _refTicket,
          ParamType.DocumentReference,
        ),
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
      }.withoutNulls;

  static SupportRepliesStruct fromSerializableMap(Map<String, dynamic> data) =>
      SupportRepliesStruct(
        refTicket: deserializeParam(
          data['refTicket'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Club', 'supportTickets'],
        ),
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
      );

  @override
  String toString() => 'SupportRepliesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SupportRepliesStruct &&
        refTicket == other.refTicket &&
        revertedby == other.revertedby &&
        createdAt == other.createdAt &&
        note == other.note;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([refTicket, revertedby, createdAt, note]);
}

SupportRepliesStruct createSupportRepliesStruct({
  DocumentReference? refTicket,
  String? revertedby,
  DateTime? createdAt,
  String? note,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SupportRepliesStruct(
      refTicket: refTicket,
      revertedby: revertedby,
      createdAt: createdAt,
      note: note,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SupportRepliesStruct? updateSupportRepliesStruct(
  SupportRepliesStruct? supportReplies, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    supportReplies
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSupportRepliesStructData(
  Map<String, dynamic> firestoreData,
  SupportRepliesStruct? supportReplies,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (supportReplies == null) {
    return;
  }
  if (supportReplies.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && supportReplies.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final supportRepliesData =
      getSupportRepliesFirestoreData(supportReplies, forFieldValue);
  final nestedData =
      supportRepliesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = supportReplies.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSupportRepliesFirestoreData(
  SupportRepliesStruct? supportReplies, [
  bool forFieldValue = false,
]) {
  if (supportReplies == null) {
    return {};
  }
  final firestoreData = mapToFirestore(supportReplies.toMap());

  // Add any Firestore field values
  mapToFirestore(supportReplies.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSupportRepliesListFirestoreData(
  List<SupportRepliesStruct>? supportRepliess,
) =>
    supportRepliess
        ?.map((e) => getSupportRepliesFirestoreData(e, true))
        .toList() ??
    [];
