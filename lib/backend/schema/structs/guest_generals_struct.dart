// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class GuestGeneralsStruct extends FFFirebaseStruct {
  GuestGeneralsStruct({
    DocumentReference? refUser,
    String? guestName,
    String? guestPic,
    DocumentReference? ticketRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _refUser = refUser,
        _guestName = guestName,
        _guestPic = guestPic,
        _ticketRef = ticketRef,
        super(firestoreUtilData);

  // "refUser" field.
  DocumentReference? _refUser;
  DocumentReference? get refUser => _refUser;
  set refUser(DocumentReference? val) => _refUser = val;

  bool hasRefUser() => _refUser != null;

  // "guestName" field.
  String? _guestName;
  String get guestName => _guestName ?? '';
  set guestName(String? val) => _guestName = val;

  bool hasGuestName() => _guestName != null;

  // "guestPic" field.
  String? _guestPic;
  String get guestPic => _guestPic ?? '';
  set guestPic(String? val) => _guestPic = val;

  bool hasGuestPic() => _guestPic != null;

  // "ticketRef" field.
  DocumentReference? _ticketRef;
  DocumentReference? get ticketRef => _ticketRef;
  set ticketRef(DocumentReference? val) => _ticketRef = val;

  bool hasTicketRef() => _ticketRef != null;

  static GuestGeneralsStruct fromMap(Map<String, dynamic> data) =>
      GuestGeneralsStruct(
        refUser: data['refUser'] as DocumentReference?,
        guestName: data['guestName'] as String?,
        guestPic: data['guestPic'] as String?,
        ticketRef: data['ticketRef'] as DocumentReference?,
      );

  static GuestGeneralsStruct? maybeFromMap(dynamic data) => data is Map
      ? GuestGeneralsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'refUser': _refUser,
        'guestName': _guestName,
        'guestPic': _guestPic,
        'ticketRef': _ticketRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'refUser': serializeParam(
          _refUser,
          ParamType.DocumentReference,
        ),
        'guestName': serializeParam(
          _guestName,
          ParamType.String,
        ),
        'guestPic': serializeParam(
          _guestPic,
          ParamType.String,
        ),
        'ticketRef': serializeParam(
          _ticketRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static GuestGeneralsStruct fromSerializableMap(Map<String, dynamic> data) =>
      GuestGeneralsStruct(
        refUser: deserializeParam(
          data['refUser'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        guestName: deserializeParam(
          data['guestName'],
          ParamType.String,
          false,
        ),
        guestPic: deserializeParam(
          data['guestPic'],
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
  String toString() => 'GuestGeneralsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GuestGeneralsStruct &&
        refUser == other.refUser &&
        guestName == other.guestName &&
        guestPic == other.guestPic &&
        ticketRef == other.ticketRef;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([refUser, guestName, guestPic, ticketRef]);
}

GuestGeneralsStruct createGuestGeneralsStruct({
  DocumentReference? refUser,
  String? guestName,
  String? guestPic,
  DocumentReference? ticketRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GuestGeneralsStruct(
      refUser: refUser,
      guestName: guestName,
      guestPic: guestPic,
      ticketRef: ticketRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GuestGeneralsStruct? updateGuestGeneralsStruct(
  GuestGeneralsStruct? guestGenerals, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    guestGenerals
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGuestGeneralsStructData(
  Map<String, dynamic> firestoreData,
  GuestGeneralsStruct? guestGenerals,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (guestGenerals == null) {
    return;
  }
  if (guestGenerals.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && guestGenerals.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final guestGeneralsData =
      getGuestGeneralsFirestoreData(guestGenerals, forFieldValue);
  final nestedData =
      guestGeneralsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = guestGenerals.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGuestGeneralsFirestoreData(
  GuestGeneralsStruct? guestGenerals, [
  bool forFieldValue = false,
]) {
  if (guestGenerals == null) {
    return {};
  }
  final firestoreData = mapToFirestore(guestGenerals.toMap());

  // Add any Firestore field values
  mapToFirestore(guestGenerals.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGuestGeneralsListFirestoreData(
  List<GuestGeneralsStruct>? guestGeneralss,
) =>
    guestGeneralss
        ?.map((e) => getGuestGeneralsFirestoreData(e, true))
        .toList() ??
    [];
