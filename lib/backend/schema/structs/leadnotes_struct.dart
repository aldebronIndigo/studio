// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class LeadnotesStruct extends FFFirebaseStruct {
  LeadnotesStruct({
    DateTime? createdAt,
    String? note,
    String? addedBy,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _createdAt = createdAt,
        _note = note,
        _addedBy = addedBy,
        super(firestoreUtilData);

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

  // "addedBy" field.
  String? _addedBy;
  String get addedBy => _addedBy ?? '';
  set addedBy(String? val) => _addedBy = val;

  bool hasAddedBy() => _addedBy != null;

  static LeadnotesStruct fromMap(Map<String, dynamic> data) => LeadnotesStruct(
        createdAt: data['createdAt'] as DateTime?,
        note: data['note'] as String?,
        addedBy: data['addedBy'] as String?,
      );

  static LeadnotesStruct? maybeFromMap(dynamic data) => data is Map
      ? LeadnotesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'createdAt': _createdAt,
        'note': _note,
        'addedBy': _addedBy,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'createdAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'note': serializeParam(
          _note,
          ParamType.String,
        ),
        'addedBy': serializeParam(
          _addedBy,
          ParamType.String,
        ),
      }.withoutNulls;

  static LeadnotesStruct fromSerializableMap(Map<String, dynamic> data) =>
      LeadnotesStruct(
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
        addedBy: deserializeParam(
          data['addedBy'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LeadnotesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeadnotesStruct &&
        createdAt == other.createdAt &&
        note == other.note &&
        addedBy == other.addedBy;
  }

  @override
  int get hashCode => const ListEquality().hash([createdAt, note, addedBy]);
}

LeadnotesStruct createLeadnotesStruct({
  DateTime? createdAt,
  String? note,
  String? addedBy,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeadnotesStruct(
      createdAt: createdAt,
      note: note,
      addedBy: addedBy,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeadnotesStruct? updateLeadnotesStruct(
  LeadnotesStruct? leadnotes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leadnotes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeadnotesStructData(
  Map<String, dynamic> firestoreData,
  LeadnotesStruct? leadnotes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leadnotes == null) {
    return;
  }
  if (leadnotes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leadnotes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leadnotesData = getLeadnotesFirestoreData(leadnotes, forFieldValue);
  final nestedData = leadnotesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leadnotes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeadnotesFirestoreData(
  LeadnotesStruct? leadnotes, [
  bool forFieldValue = false,
]) {
  if (leadnotes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leadnotes.toMap());

  // Add any Firestore field values
  mapToFirestore(leadnotes.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeadnotesListFirestoreData(
  List<LeadnotesStruct>? leadnotess,
) =>
    leadnotess?.map((e) => getLeadnotesFirestoreData(e, true)).toList() ?? [];
