// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ParticipantsUserStruct extends FFFirebaseStruct {
  ParticipantsUserStruct({
    DocumentReference? refUser,
    String? userName,
    String? userPic,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _refUser = refUser,
        _userName = userName,
        _userPic = userPic,
        super(firestoreUtilData);

  // "refUser" field.
  DocumentReference? _refUser;
  DocumentReference? get refUser => _refUser;
  set refUser(DocumentReference? val) => _refUser = val;

  bool hasRefUser() => _refUser != null;

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

  static ParticipantsUserStruct fromMap(Map<String, dynamic> data) =>
      ParticipantsUserStruct(
        refUser: data['refUser'] as DocumentReference?,
        userName: data['userName'] as String?,
        userPic: data['userPic'] as String?,
      );

  static ParticipantsUserStruct? maybeFromMap(dynamic data) => data is Map
      ? ParticipantsUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'refUser': _refUser,
        'userName': _userName,
        'userPic': _userPic,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'refUser': serializeParam(
          _refUser,
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

  static ParticipantsUserStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ParticipantsUserStruct(
        refUser: deserializeParam(
          data['refUser'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
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
  String toString() => 'ParticipantsUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ParticipantsUserStruct &&
        refUser == other.refUser &&
        userName == other.userName &&
        userPic == other.userPic;
  }

  @override
  int get hashCode => const ListEquality().hash([refUser, userName, userPic]);
}

ParticipantsUserStruct createParticipantsUserStruct({
  DocumentReference? refUser,
  String? userName,
  String? userPic,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ParticipantsUserStruct(
      refUser: refUser,
      userName: userName,
      userPic: userPic,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ParticipantsUserStruct? updateParticipantsUserStruct(
  ParticipantsUserStruct? participantsUser, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    participantsUser
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addParticipantsUserStructData(
  Map<String, dynamic> firestoreData,
  ParticipantsUserStruct? participantsUser,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (participantsUser == null) {
    return;
  }
  if (participantsUser.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && participantsUser.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final participantsUserData =
      getParticipantsUserFirestoreData(participantsUser, forFieldValue);
  final nestedData =
      participantsUserData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = participantsUser.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getParticipantsUserFirestoreData(
  ParticipantsUserStruct? participantsUser, [
  bool forFieldValue = false,
]) {
  if (participantsUser == null) {
    return {};
  }
  final firestoreData = mapToFirestore(participantsUser.toMap());

  // Add any Firestore field values
  mapToFirestore(participantsUser.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getParticipantsUserListFirestoreData(
  List<ParticipantsUserStruct>? participantsUsers,
) =>
    participantsUsers
        ?.map((e) => getParticipantsUserFirestoreData(e, true))
        .toList() ??
    [];
