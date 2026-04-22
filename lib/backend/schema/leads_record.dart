import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeadsRecord extends FirestoreRecord {
  LeadsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "refClub" field.
  DocumentReference? _refClub;
  DocumentReference? get refClub => _refClub;
  bool hasRefClub() => _refClub != null;

  // "refCP" field.
  DocumentReference? _refCP;
  DocumentReference? get refCP => _refCP;
  bool hasRefCP() => _refCP != null;

  // "CPname" field.
  String? _cPname;
  String get cPname => _cPname ?? '';
  bool hasCPname() => _cPname != null;

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

  // "notes" field.
  List<LeadnotesStruct>? _notes;
  List<LeadnotesStruct> get notes => _notes ?? const [];
  bool hasNotes() => _notes != null;

  // "offeredPlan" field.
  String? _offeredPlan;
  String get offeredPlan => _offeredPlan ?? '';
  bool hasOfferedPlan() => _offeredPlan != null;

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
    _refClub = snapshotData['refClub'] as DocumentReference?;
    _refCP = snapshotData['refCP'] as DocumentReference?;
    _cPname = snapshotData['CPname'] as String?;
    _createdat = snapshotData['createdat'] as DateTime?;
    _lastupdatedAt = snapshotData['lastupdatedAt'] as DateTime?;
    _leadName = snapshotData['leadName'] as String?;
    _leadPhone = snapshotData['LeadPhone'] as String?;
    _leadEmail = snapshotData['leadEmail'] as String?;
    _address = snapshotData['address'] as String?;
    _city = snapshotData['city'] as String?;
    _profession = snapshotData['profession'] as String?;
    _about = snapshotData['about'] as String?;
    _notes = getStructList(
      snapshotData['notes'],
      LeadnotesStruct.fromMap,
    );
    _offeredPlan = snapshotData['offeredPlan'] as String?;
    _leadStage = snapshotData['leadStage'] as String?;
    _noteadded = snapshotData['noteadded'] as bool?;
    _leadType = snapshotData['leadType'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('leads')
          : FirebaseFirestore.instance.collectionGroup('leads');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('leads').doc(id);

  static Stream<LeadsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LeadsRecord.fromSnapshot(s));

  static Future<LeadsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LeadsRecord.fromSnapshot(s));

  static LeadsRecord fromSnapshot(DocumentSnapshot snapshot) => LeadsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LeadsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LeadsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LeadsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LeadsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLeadsRecordData({
  DocumentReference? refClub,
  DocumentReference? refCP,
  String? cPname,
  DateTime? createdat,
  DateTime? lastupdatedAt,
  String? leadName,
  String? leadPhone,
  String? leadEmail,
  String? address,
  String? city,
  String? profession,
  String? about,
  String? offeredPlan,
  String? leadStage,
  bool? noteadded,
  String? leadType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'refClub': refClub,
      'refCP': refCP,
      'CPname': cPname,
      'createdat': createdat,
      'lastupdatedAt': lastupdatedAt,
      'leadName': leadName,
      'LeadPhone': leadPhone,
      'leadEmail': leadEmail,
      'address': address,
      'city': city,
      'profession': profession,
      'about': about,
      'offeredPlan': offeredPlan,
      'leadStage': leadStage,
      'noteadded': noteadded,
      'leadType': leadType,
    }.withoutNulls,
  );

  return firestoreData;
}

class LeadsRecordDocumentEquality implements Equality<LeadsRecord> {
  const LeadsRecordDocumentEquality();

  @override
  bool equals(LeadsRecord? e1, LeadsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.refClub == e2?.refClub &&
        e1?.refCP == e2?.refCP &&
        e1?.cPname == e2?.cPname &&
        e1?.createdat == e2?.createdat &&
        e1?.lastupdatedAt == e2?.lastupdatedAt &&
        e1?.leadName == e2?.leadName &&
        e1?.leadPhone == e2?.leadPhone &&
        e1?.leadEmail == e2?.leadEmail &&
        e1?.address == e2?.address &&
        e1?.city == e2?.city &&
        e1?.profession == e2?.profession &&
        e1?.about == e2?.about &&
        listEquality.equals(e1?.notes, e2?.notes) &&
        e1?.offeredPlan == e2?.offeredPlan &&
        e1?.leadStage == e2?.leadStage &&
        e1?.noteadded == e2?.noteadded &&
        e1?.leadType == e2?.leadType;
  }

  @override
  int hash(LeadsRecord? e) => const ListEquality().hash([
        e?.refClub,
        e?.refCP,
        e?.cPname,
        e?.createdat,
        e?.lastupdatedAt,
        e?.leadName,
        e?.leadPhone,
        e?.leadEmail,
        e?.address,
        e?.city,
        e?.profession,
        e?.about,
        e?.notes,
        e?.offeredPlan,
        e?.leadStage,
        e?.noteadded,
        e?.leadType
      ]);

  @override
  bool isValidKey(Object? o) => o is LeadsRecord;
}
