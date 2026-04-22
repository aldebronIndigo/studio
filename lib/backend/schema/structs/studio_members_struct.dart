// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class StudioMembersStruct extends FFFirebaseStruct {
  StudioMembersStruct({
    DocumentReference? refUser,
    String? userName,
    DocumentReference? memberRef,
    String? memberPic,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _refUser = refUser,
        _userName = userName,
        _memberRef = memberRef,
        _memberPic = memberPic,
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

  // "memberRef" field.
  DocumentReference? _memberRef;
  DocumentReference? get memberRef => _memberRef;
  set memberRef(DocumentReference? val) => _memberRef = val;

  bool hasMemberRef() => _memberRef != null;

  // "memberPic" field.
  String? _memberPic;
  String get memberPic => _memberPic ?? '';
  set memberPic(String? val) => _memberPic = val;

  bool hasMemberPic() => _memberPic != null;

  static StudioMembersStruct fromMap(Map<String, dynamic> data) =>
      StudioMembersStruct(
        refUser: data['refUser'] as DocumentReference?,
        userName: data['userName'] as String?,
        memberRef: data['memberRef'] as DocumentReference?,
        memberPic: data['memberPic'] as String?,
      );

  static StudioMembersStruct? maybeFromMap(dynamic data) => data is Map
      ? StudioMembersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'refUser': _refUser,
        'userName': _userName,
        'memberRef': _memberRef,
        'memberPic': _memberPic,
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
        'memberRef': serializeParam(
          _memberRef,
          ParamType.DocumentReference,
        ),
        'memberPic': serializeParam(
          _memberPic,
          ParamType.String,
        ),
      }.withoutNulls;

  static StudioMembersStruct fromSerializableMap(Map<String, dynamic> data) =>
      StudioMembersStruct(
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
        memberRef: deserializeParam(
          data['memberRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['studio', 'members'],
        ),
        memberPic: deserializeParam(
          data['memberPic'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StudioMembersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StudioMembersStruct &&
        refUser == other.refUser &&
        userName == other.userName &&
        memberRef == other.memberRef &&
        memberPic == other.memberPic;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([refUser, userName, memberRef, memberPic]);
}

StudioMembersStruct createStudioMembersStruct({
  DocumentReference? refUser,
  String? userName,
  DocumentReference? memberRef,
  String? memberPic,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StudioMembersStruct(
      refUser: refUser,
      userName: userName,
      memberRef: memberRef,
      memberPic: memberPic,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StudioMembersStruct? updateStudioMembersStruct(
  StudioMembersStruct? studioMembers, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    studioMembers
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStudioMembersStructData(
  Map<String, dynamic> firestoreData,
  StudioMembersStruct? studioMembers,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (studioMembers == null) {
    return;
  }
  if (studioMembers.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && studioMembers.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final studioMembersData =
      getStudioMembersFirestoreData(studioMembers, forFieldValue);
  final nestedData =
      studioMembersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = studioMembers.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStudioMembersFirestoreData(
  StudioMembersStruct? studioMembers, [
  bool forFieldValue = false,
]) {
  if (studioMembers == null) {
    return {};
  }
  final firestoreData = mapToFirestore(studioMembers.toMap());

  // Add any Firestore field values
  mapToFirestore(studioMembers.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStudioMembersListFirestoreData(
  List<StudioMembersStruct>? studioMemberss,
) =>
    studioMemberss
        ?.map((e) => getStudioMembersFirestoreData(e, true))
        .toList() ??
    [];
