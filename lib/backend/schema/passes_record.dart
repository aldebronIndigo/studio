import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PassesRecord extends FirestoreRecord {
  PassesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "passType" field.
  String? _passType;
  String get passType => _passType ?? '';
  bool hasPassType() => _passType != null;

  // "totalDays" field.
  int? _totalDays;
  int get totalDays => _totalDays ?? 0;
  bool hasTotalDays() => _totalDays != null;

  // "minutesperDay" field.
  int? _minutesperDay;
  int get minutesperDay => _minutesperDay ?? 0;
  bool hasMinutesperDay() => _minutesperDay != null;

  // "passName" field.
  String? _passName;
  String get passName => _passName ?? '';
  bool hasPassName() => _passName != null;

  // "coverImage" field.
  String? _coverImage;
  String get coverImage => _coverImage ?? '';
  bool hasCoverImage() => _coverImage != null;

  // "createdbyName" field.
  String? _createdbyName;
  String get createdbyName => _createdbyName ?? '';
  bool hasCreatedbyName() => _createdbyName != null;

  // "createdbyRef" field.
  DocumentReference? _createdbyRef;
  DocumentReference? get createdbyRef => _createdbyRef;
  bool hasCreatedbyRef() => _createdbyRef != null;

  // "memberList" field.
  List<DocumentReference>? _memberList;
  List<DocumentReference> get memberList => _memberList ?? const [];
  bool hasMemberList() => _memberList != null;

  // "totalPasses" field.
  int? _totalPasses;
  int get totalPasses => _totalPasses ?? 0;
  bool hasTotalPasses() => _totalPasses != null;

  // "issuedPasses" field.
  int? _issuedPasses;
  int get issuedPasses => _issuedPasses ?? 0;
  bool hasIssuedPasses() => _issuedPasses != null;

  // "freeTrialdays" field.
  int? _freeTrialdays;
  int get freeTrialdays => _freeTrialdays ?? 0;
  bool hasFreeTrialdays() => _freeTrialdays != null;

  // "memberData" field.
  List<StudioMembersStruct>? _memberData;
  List<StudioMembersStruct> get memberData => _memberData ?? const [];
  bool hasMemberData() => _memberData != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "sessionsPerDay" field.
  int? _sessionsPerDay;
  int get sessionsPerDay => _sessionsPerDay ?? 0;
  bool hasSessionsPerDay() => _sessionsPerDay != null;

  // "minutespersession" field.
  int? _minutespersession;
  int get minutespersession => _minutespersession ?? 0;
  bool hasMinutespersession() => _minutespersession != null;

  // "multiBranch" field.
  bool? _multiBranch;
  bool get multiBranch => _multiBranch ?? false;
  bool hasMultiBranch() => _multiBranch != null;

  // "passID" field.
  String? _passID;
  String get passID => _passID ?? '';
  bool hasPassID() => _passID != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "attachedPlans" field.
  List<DocumentReference>? _attachedPlans;
  List<DocumentReference> get attachedPlans => _attachedPlans ?? const [];
  bool hasAttachedPlans() => _attachedPlans != null;

  // "waitlistEnabled" field.
  bool? _waitlistEnabled;
  bool get waitlistEnabled => _waitlistEnabled ?? false;
  bool hasWaitlistEnabled() => _waitlistEnabled != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _passType = snapshotData['passType'] as String?;
    _totalDays = castToType<int>(snapshotData['totalDays']);
    _minutesperDay = castToType<int>(snapshotData['minutesperDay']);
    _passName = snapshotData['passName'] as String?;
    _coverImage = snapshotData['coverImage'] as String?;
    _createdbyName = snapshotData['createdbyName'] as String?;
    _createdbyRef = snapshotData['createdbyRef'] as DocumentReference?;
    _memberList = getDataList(snapshotData['memberList']);
    _totalPasses = castToType<int>(snapshotData['totalPasses']);
    _issuedPasses = castToType<int>(snapshotData['issuedPasses']);
    _freeTrialdays = castToType<int>(snapshotData['freeTrialdays']);
    _memberData = getStructList(
      snapshotData['memberData'],
      StudioMembersStruct.fromMap,
    );
    _description = snapshotData['description'] as String?;
    _sessionsPerDay = castToType<int>(snapshotData['sessionsPerDay']);
    _minutespersession = castToType<int>(snapshotData['minutespersession']);
    _multiBranch = snapshotData['multiBranch'] as bool?;
    _passID = snapshotData['passID'] as String?;
    _category = snapshotData['category'] as String?;
    _attachedPlans = getDataList(snapshotData['attachedPlans']);
    _waitlistEnabled = snapshotData['waitlistEnabled'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('passes')
          : FirebaseFirestore.instance.collectionGroup('passes');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('passes').doc(id);

  static Stream<PassesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PassesRecord.fromSnapshot(s));

  static Future<PassesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PassesRecord.fromSnapshot(s));

  static PassesRecord fromSnapshot(DocumentSnapshot snapshot) => PassesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PassesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PassesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PassesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PassesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPassesRecordData({
  String? passType,
  int? totalDays,
  int? minutesperDay,
  String? passName,
  String? coverImage,
  String? createdbyName,
  DocumentReference? createdbyRef,
  int? totalPasses,
  int? issuedPasses,
  int? freeTrialdays,
  String? description,
  int? sessionsPerDay,
  int? minutespersession,
  bool? multiBranch,
  String? passID,
  String? category,
  bool? waitlistEnabled,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'passType': passType,
      'totalDays': totalDays,
      'minutesperDay': minutesperDay,
      'passName': passName,
      'coverImage': coverImage,
      'createdbyName': createdbyName,
      'createdbyRef': createdbyRef,
      'totalPasses': totalPasses,
      'issuedPasses': issuedPasses,
      'freeTrialdays': freeTrialdays,
      'description': description,
      'sessionsPerDay': sessionsPerDay,
      'minutespersession': minutespersession,
      'multiBranch': multiBranch,
      'passID': passID,
      'category': category,
      'waitlistEnabled': waitlistEnabled,
    }.withoutNulls,
  );

  return firestoreData;
}

class PassesRecordDocumentEquality implements Equality<PassesRecord> {
  const PassesRecordDocumentEquality();

  @override
  bool equals(PassesRecord? e1, PassesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.passType == e2?.passType &&
        e1?.totalDays == e2?.totalDays &&
        e1?.minutesperDay == e2?.minutesperDay &&
        e1?.passName == e2?.passName &&
        e1?.coverImage == e2?.coverImage &&
        e1?.createdbyName == e2?.createdbyName &&
        e1?.createdbyRef == e2?.createdbyRef &&
        listEquality.equals(e1?.memberList, e2?.memberList) &&
        e1?.totalPasses == e2?.totalPasses &&
        e1?.issuedPasses == e2?.issuedPasses &&
        e1?.freeTrialdays == e2?.freeTrialdays &&
        listEquality.equals(e1?.memberData, e2?.memberData) &&
        e1?.description == e2?.description &&
        e1?.sessionsPerDay == e2?.sessionsPerDay &&
        e1?.minutespersession == e2?.minutespersession &&
        e1?.multiBranch == e2?.multiBranch &&
        e1?.passID == e2?.passID &&
        e1?.category == e2?.category &&
        listEquality.equals(e1?.attachedPlans, e2?.attachedPlans) &&
        e1?.waitlistEnabled == e2?.waitlistEnabled;
  }

  @override
  int hash(PassesRecord? e) => const ListEquality().hash([
        e?.passType,
        e?.totalDays,
        e?.minutesperDay,
        e?.passName,
        e?.coverImage,
        e?.createdbyName,
        e?.createdbyRef,
        e?.memberList,
        e?.totalPasses,
        e?.issuedPasses,
        e?.freeTrialdays,
        e?.memberData,
        e?.description,
        e?.sessionsPerDay,
        e?.minutespersession,
        e?.multiBranch,
        e?.passID,
        e?.category,
        e?.attachedPlans,
        e?.waitlistEnabled
      ]);

  @override
  bool isValidKey(Object? o) => o is PassesRecord;
}
