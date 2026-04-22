// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ParticpantsMembersStruct extends FFFirebaseStruct {
  ParticpantsMembersStruct({
    DocumentReference? refMember,
    String? userName,
    String? userPic,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _refMember = refMember,
        _userName = userName,
        _userPic = userPic,
        super(firestoreUtilData);

  // "refMember" field.
  DocumentReference? _refMember;
  DocumentReference? get refMember => _refMember;
  set refMember(DocumentReference? val) => _refMember = val;

  bool hasRefMember() => _refMember != null;

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

  static ParticpantsMembersStruct fromMap(Map<String, dynamic> data) =>
      ParticpantsMembersStruct(
        refMember: data['refMember'] as DocumentReference?,
        userName: data['userName'] as String?,
        userPic: data['userPic'] as String?,
      );

  static ParticpantsMembersStruct? maybeFromMap(dynamic data) => data is Map
      ? ParticpantsMembersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'refMember': _refMember,
        'userName': _userName,
        'userPic': _userPic,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'refMember': serializeParam(
          _refMember,
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

  static ParticpantsMembersStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ParticpantsMembersStruct(
        refMember: deserializeParam(
          data['refMember'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Club', 'MembersClub'],
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
  String toString() => 'ParticpantsMembersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ParticpantsMembersStruct &&
        refMember == other.refMember &&
        userName == other.userName &&
        userPic == other.userPic;
  }

  @override
  int get hashCode => const ListEquality().hash([refMember, userName, userPic]);
}

ParticpantsMembersStruct createParticpantsMembersStruct({
  DocumentReference? refMember,
  String? userName,
  String? userPic,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ParticpantsMembersStruct(
      refMember: refMember,
      userName: userName,
      userPic: userPic,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ParticpantsMembersStruct? updateParticpantsMembersStruct(
  ParticpantsMembersStruct? particpantsMembers, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    particpantsMembers
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addParticpantsMembersStructData(
  Map<String, dynamic> firestoreData,
  ParticpantsMembersStruct? particpantsMembers,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (particpantsMembers == null) {
    return;
  }
  if (particpantsMembers.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && particpantsMembers.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final particpantsMembersData =
      getParticpantsMembersFirestoreData(particpantsMembers, forFieldValue);
  final nestedData =
      particpantsMembersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      particpantsMembers.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getParticpantsMembersFirestoreData(
  ParticpantsMembersStruct? particpantsMembers, [
  bool forFieldValue = false,
]) {
  if (particpantsMembers == null) {
    return {};
  }
  final firestoreData = mapToFirestore(particpantsMembers.toMap());

  // Add any Firestore field values
  mapToFirestore(particpantsMembers.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getParticpantsMembersListFirestoreData(
  List<ParticpantsMembersStruct>? particpantsMemberss,
) =>
    particpantsMemberss
        ?.map((e) => getParticpantsMembersFirestoreData(e, true))
        .toList() ??
    [];
