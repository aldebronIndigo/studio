// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class GuestsMembersStruct extends FFFirebaseStruct {
  GuestsMembersStruct({
    DocumentReference? refMember,
    String? memberName,
    String? memberPic,
    DocumentReference? ticketRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _refMember = refMember,
        _memberName = memberName,
        _memberPic = memberPic,
        _ticketRef = ticketRef,
        super(firestoreUtilData);

  // "refMember" field.
  DocumentReference? _refMember;
  DocumentReference? get refMember => _refMember;
  set refMember(DocumentReference? val) => _refMember = val;

  bool hasRefMember() => _refMember != null;

  // "memberName" field.
  String? _memberName;
  String get memberName => _memberName ?? '';
  set memberName(String? val) => _memberName = val;

  bool hasMemberName() => _memberName != null;

  // "memberPic" field.
  String? _memberPic;
  String get memberPic => _memberPic ?? '';
  set memberPic(String? val) => _memberPic = val;

  bool hasMemberPic() => _memberPic != null;

  // "ticketRef" field.
  DocumentReference? _ticketRef;
  DocumentReference? get ticketRef => _ticketRef;
  set ticketRef(DocumentReference? val) => _ticketRef = val;

  bool hasTicketRef() => _ticketRef != null;

  static GuestsMembersStruct fromMap(Map<String, dynamic> data) =>
      GuestsMembersStruct(
        refMember: data['refMember'] as DocumentReference?,
        memberName: data['memberName'] as String?,
        memberPic: data['memberPic'] as String?,
        ticketRef: data['ticketRef'] as DocumentReference?,
      );

  static GuestsMembersStruct? maybeFromMap(dynamic data) => data is Map
      ? GuestsMembersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'refMember': _refMember,
        'memberName': _memberName,
        'memberPic': _memberPic,
        'ticketRef': _ticketRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'refMember': serializeParam(
          _refMember,
          ParamType.DocumentReference,
        ),
        'memberName': serializeParam(
          _memberName,
          ParamType.String,
        ),
        'memberPic': serializeParam(
          _memberPic,
          ParamType.String,
        ),
        'ticketRef': serializeParam(
          _ticketRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static GuestsMembersStruct fromSerializableMap(Map<String, dynamic> data) =>
      GuestsMembersStruct(
        refMember: deserializeParam(
          data['refMember'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Club', 'MembersClub'],
        ),
        memberName: deserializeParam(
          data['memberName'],
          ParamType.String,
          false,
        ),
        memberPic: deserializeParam(
          data['memberPic'],
          ParamType.String,
          false,
        ),
        ticketRef: deserializeParam(
          data['ticketRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Club', 'tickets'],
        ),
      );

  @override
  String toString() => 'GuestsMembersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GuestsMembersStruct &&
        refMember == other.refMember &&
        memberName == other.memberName &&
        memberPic == other.memberPic &&
        ticketRef == other.ticketRef;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([refMember, memberName, memberPic, ticketRef]);
}

GuestsMembersStruct createGuestsMembersStruct({
  DocumentReference? refMember,
  String? memberName,
  String? memberPic,
  DocumentReference? ticketRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GuestsMembersStruct(
      refMember: refMember,
      memberName: memberName,
      memberPic: memberPic,
      ticketRef: ticketRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GuestsMembersStruct? updateGuestsMembersStruct(
  GuestsMembersStruct? guestsMembers, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    guestsMembers
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGuestsMembersStructData(
  Map<String, dynamic> firestoreData,
  GuestsMembersStruct? guestsMembers,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (guestsMembers == null) {
    return;
  }
  if (guestsMembers.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && guestsMembers.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final guestsMembersData =
      getGuestsMembersFirestoreData(guestsMembers, forFieldValue);
  final nestedData =
      guestsMembersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = guestsMembers.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGuestsMembersFirestoreData(
  GuestsMembersStruct? guestsMembers, [
  bool forFieldValue = false,
]) {
  if (guestsMembers == null) {
    return {};
  }
  final firestoreData = mapToFirestore(guestsMembers.toMap());

  // Add any Firestore field values
  mapToFirestore(guestsMembers.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGuestsMembersListFirestoreData(
  List<GuestsMembersStruct>? guestsMemberss,
) =>
    guestsMemberss
        ?.map((e) => getGuestsMembersFirestoreData(e, true))
        .toList() ??
    [];
