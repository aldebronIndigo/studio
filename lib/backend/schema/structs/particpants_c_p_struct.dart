// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ParticpantsCPStruct extends FFFirebaseStruct {
  ParticpantsCPStruct({
    DocumentReference? refCP,
    String? userName,
    String? userPic,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _refCP = refCP,
        _userName = userName,
        _userPic = userPic,
        super(firestoreUtilData);

  // "refCP" field.
  DocumentReference? _refCP;
  DocumentReference? get refCP => _refCP;
  set refCP(DocumentReference? val) => _refCP = val;

  bool hasRefCP() => _refCP != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;

  bool hasUserName() => _userName != null;

  // "userPic" field.
  String? _userPic;
  String get userPic => _userPic ?? '';
  set userPic(String? val) => _userPic = val;

  bool hasUserPic() => _userPic != null;

  static ParticpantsCPStruct fromMap(Map<String, dynamic> data) =>
      ParticpantsCPStruct(
        refCP: data['refCP'] as DocumentReference?,
        userName: data['userName'] as String?,
        userPic: data['userPic'] as String?,
      );

  static ParticpantsCPStruct? maybeFromMap(dynamic data) => data is Map
      ? ParticpantsCPStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'refCP': _refCP,
        'userName': _userName,
        'userPic': _userPic,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'refCP': serializeParam(
          _refCP,
          ParamType.DocumentReference,
        ),
        'userName': serializeParam(
          _userName,
          ParamType.String,
        ),
        'userPic': serializeParam(
          _userPic,
          ParamType.String,
        ),
      }.withoutNulls;

  static ParticpantsCPStruct fromSerializableMap(Map<String, dynamic> data) =>
      ParticpantsCPStruct(
        refCP: deserializeParam(
          data['refCP'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Club', 'channelPartners'],
        ),
        userName: deserializeParam(
          data['userName'],
          ParamType.String,
          false,
        ),
        userPic: deserializeParam(
          data['userPic'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ParticpantsCPStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ParticpantsCPStruct &&
        refCP == other.refCP &&
        userName == other.userName &&
        userPic == other.userPic;
  }

  @override
  int get hashCode => const ListEquality().hash([refCP, userName, userPic]);
}

ParticpantsCPStruct createParticpantsCPStruct({
  DocumentReference? refCP,
  String? userName,
  String? userPic,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ParticpantsCPStruct(
      refCP: refCP,
      userName: userName,
      userPic: userPic,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ParticpantsCPStruct? updateParticpantsCPStruct(
  ParticpantsCPStruct? particpantsCP, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    particpantsCP
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addParticpantsCPStructData(
  Map<String, dynamic> firestoreData,
  ParticpantsCPStruct? particpantsCP,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (particpantsCP == null) {
    return;
  }
  if (particpantsCP.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && particpantsCP.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final particpantsCPData =
      getParticpantsCPFirestoreData(particpantsCP, forFieldValue);
  final nestedData =
      particpantsCPData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = particpantsCP.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getParticpantsCPFirestoreData(
  ParticpantsCPStruct? particpantsCP, [
  bool forFieldValue = false,
]) {
  if (particpantsCP == null) {
    return {};
  }
  final firestoreData = mapToFirestore(particpantsCP.toMap());

  // Add any Firestore field values
  mapToFirestore(particpantsCP.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getParticpantsCPListFirestoreData(
  List<ParticpantsCPStruct>? particpantsCPs,
) =>
    particpantsCPs
        ?.map((e) => getParticpantsCPFirestoreData(e, true))
        .toList() ??
    [];
