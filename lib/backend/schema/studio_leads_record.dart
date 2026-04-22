import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudioLeadsRecord extends FirestoreRecord {
  StudioLeadsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdat" field.
  DateTime? _createdat;
  DateTime? get createdat => _createdat;
  bool hasCreatedat() => _createdat != null;

  // "lastupdatedAt" field.
  DateTime? _lastupdatedAt;
  DateTime? get lastupdatedAt => _lastupdatedAt;
  bool hasLastupdatedAt() => _lastupdatedAt != null;

  // "leadName" field.
  String? _leadName;
  String get leadName => _leadName ?? '';
  bool hasLeadName() => _leadName != null;

  // "LeadPhone" field.
  String? _leadPhone;
  String get leadPhone => _leadPhone ?? '';
  bool hasLeadPhone() => _leadPhone != null;

  // "leadEmail" field.
  String? _leadEmail;
  String get leadEmail => _leadEmail ?? '';
  bool hasLeadEmail() => _leadEmail != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "profession" field.
  String? _profession;
  String get profession => _profession ?? '';
  bool hasProfession() => _profession != null;

  // "about" field.
  String? _about;
  String get about => _about ?? '';
  bool hasAbout() => _about != null;

  // "leadStage" field.
  String? _leadStage;
  String get leadStage => _leadStage ?? '';
  bool hasLeadStage() => _leadStage != null;

  // "noteadded" field.
  bool? _noteadded;
  bool get noteadded => _noteadded ?? false;
  bool hasNoteadded() => _noteadded != null;

  // "leadType" field.
  String? _leadType;
  String get leadType => _leadType ?? '';
  bool hasLeadType() => _leadType != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdat = snapshotData['createdat'] as DateTime?;
    _lastupdatedAt = snapshotData['lastupdatedAt'] as DateTime?;
    _leadName = snapshotData['leadName'] as String?;
    _leadPhone = snapshotData['LeadPhone'] as String?;
    _leadEmail = snapshotData['leadEmail'] as String?;
    _address = snapshotData['address'] as String?;
    _city = snapshotData['city'] as String?;
    _profession = snapshotData['profession'] as String?;
    _about = snapshotData['about'] as String?;
    _leadStage = snapshotData['leadStage'] as String?;
    _noteadded = snapshotData['noteadded'] as bool?;
    _leadType = snapshotData['leadType'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('StudioLeads')
          : FirebaseFirestore.instance.collectionGroup('StudioLeads');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('StudioLeads').doc(id);

  static Stream<StudioLeadsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudioLeadsRecord.fromSnapshot(s));

  static Future<StudioLeadsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StudioLeadsRecord.fromSnapshot(s));

  static StudioLeadsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudioLeadsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudioLeadsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudioLeadsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudioLeadsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudioLeadsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudioLeadsRecordData({
  DateTime? createdat,
  DateTime? lastupdatedAt,
  String? leadName,
  String? leadPhone,
  String? leadEmail,
  String? address,
  String? city,
  String? profession,
  String? about,
  String? leadStage,
  bool? noteadded,
  String? leadType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdat': createdat,
      'lastupdatedAt': lastupdatedAt,
      'leadName': leadName,
      'LeadPhone': leadPhone,
      'leadEmail': leadEmail,
      'address': address,
      'city': city,
      'profession': profession,
      'about': about,
      'leadStage': leadStage,
      'noteadded': noteadded,
      'leadType': leadType,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudioLeadsRecordDocumentEquality implements Equality<StudioLeadsRecord> {
  const StudioLeadsRecordDocumentEquality();

  @override
  bool equals(StudioLeadsRecord? e1, StudioLeadsRecord? e2) {
    return e1?.createdat == e2?.createdat &&
        e1?.lastupdatedAt == e2?.lastupdatedAt &&
        e1?.leadName == e2?.leadName &&
        e1?.leadPhone == e2?.leadPhone &&
        e1?.leadEmail == e2?.leadEmail &&
        e1?.address == e2?.address &&
        e1?.city == e2?.city &&
        e1?.profession == e2?.profession &&
        e1?.about == e2?.about &&
        e1?.leadStage == e2?.leadStage &&
        e1?.noteadded == e2?.noteadded &&
        e1?.leadType == e2?.leadType;
  }

  @override
  int hash(StudioLeadsRecord? e) => const ListEquality().hash([
        e?.createdat,
        e?.lastupdatedAt,
        e?.leadName,
        e?.leadPhone,
        e?.leadEmail,
        e?.address,
        e?.city,
        e?.profession,
        e?.about,
        e?.leadStage,
        e?.noteadded,
        e?.leadType
      ]);

  @override
  bool isValidKey(Object? o) => o is StudioLeadsRecord;
}
