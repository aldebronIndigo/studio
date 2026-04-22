// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class BackupInstructorsStruct extends FFFirebaseStruct {
  BackupInstructorsStruct({
    DocumentReference? refuser,
    String? instructorName,
    String? instructorPic,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _refuser = refuser,
        _instructorName = instructorName,
        _instructorPic = instructorPic,
        super(firestoreUtilData);

  // "refuser" field.
  DocumentReference? _refuser;
  DocumentReference? get refuser => _refuser;
  set refuser(DocumentReference? val) => _refuser = val;

  bool hasRefuser() => _refuser != null;

  // "instructorName" field.
  String? _instructorName;
  String get instructorName => _instructorName ?? '';
  set instructorName(String? val) => _instructorName = val;

  bool hasInstructorName() => _instructorName != null;

  // "instructorPic" field.
  String? _instructorPic;
  String get instructorPic => _instructorPic ?? '';
  set instructorPic(String? val) => _instructorPic = val;

  bool hasInstructorPic() => _instructorPic != null;

  static BackupInstructorsStruct fromMap(Map<String, dynamic> data) =>
      BackupInstructorsStruct(
        refuser: data['refuser'] as DocumentReference?,
        instructorName: data['instructorName'] as String?,
        instructorPic: data['instructorPic'] as String?,
      );

  static BackupInstructorsStruct? maybeFromMap(dynamic data) => data is Map
      ? BackupInstructorsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'refuser': _refuser,
        'instructorName': _instructorName,
        'instructorPic': _instructorPic,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'refuser': serializeParam(
          _refuser,
          ParamType.DocumentReference,
        ),
        'instructorName': serializeParam(
          _instructorName,
          ParamType.String,
        ),
        'instructorPic': serializeParam(
          _instructorPic,
          ParamType.String,
        ),
      }.withoutNulls;

  static BackupInstructorsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BackupInstructorsStruct(
        refuser: deserializeParam(
          data['refuser'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        instructorName: deserializeParam(
          data['instructorName'],
          ParamType.String,
          false,
        ),
        instructorPic: deserializeParam(
          data['instructorPic'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BackupInstructorsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BackupInstructorsStruct &&
        refuser == other.refuser &&
        instructorName == other.instructorName &&
        instructorPic == other.instructorPic;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([refuser, instructorName, instructorPic]);
}

BackupInstructorsStruct createBackupInstructorsStruct({
  DocumentReference? refuser,
  String? instructorName,
  String? instructorPic,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BackupInstructorsStruct(
      refuser: refuser,
      instructorName: instructorName,
      instructorPic: instructorPic,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BackupInstructorsStruct? updateBackupInstructorsStruct(
  BackupInstructorsStruct? backupInstructors, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    backupInstructors
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBackupInstructorsStructData(
  Map<String, dynamic> firestoreData,
  BackupInstructorsStruct? backupInstructors,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (backupInstructors == null) {
    return;
  }
  if (backupInstructors.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && backupInstructors.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final backupInstructorsData =
      getBackupInstructorsFirestoreData(backupInstructors, forFieldValue);
  final nestedData =
      backupInstructorsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = backupInstructors.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBackupInstructorsFirestoreData(
  BackupInstructorsStruct? backupInstructors, [
  bool forFieldValue = false,
]) {
  if (backupInstructors == null) {
    return {};
  }
  final firestoreData = mapToFirestore(backupInstructors.toMap());

  // Add any Firestore field values
  mapToFirestore(backupInstructors.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBackupInstructorsListFirestoreData(
  List<BackupInstructorsStruct>? backupInstructorss,
) =>
    backupInstructorss
        ?.map((e) => getBackupInstructorsFirestoreData(e, true))
        .toList() ??
    [];
