import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContestsRecord extends FirestoreRecord {
  ContestsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "subTitle" field.
  String? _subTitle;
  String get subTitle => _subTitle ?? '';
  bool hasSubTitle() => _subTitle != null;

  // "createdbyRef" field.
  DocumentReference? _createdbyRef;
  DocumentReference? get createdbyRef => _createdbyRef;
  bool hasCreatedbyRef() => _createdbyRef != null;

  // "createdbyName" field.
  String? _createdbyName;
  String get createdbyName => _createdbyName ?? '';
  bool hasCreatedbyName() => _createdbyName != null;

  // "createdbyPic" field.
  String? _createdbyPic;
  String get createdbyPic => _createdbyPic ?? '';
  bool hasCreatedbyPic() => _createdbyPic != null;

  // "conditions" field.
  String? _conditions;
  String get conditions => _conditions ?? '';
  bool hasConditions() => _conditions != null;

  // "reward" field.
  int? _reward;
  int get reward => _reward ?? 0;
  bool hasReward() => _reward != null;

  // "openFor" field.
  String? _openFor;
  String get openFor => _openFor ?? '';
  bool hasOpenFor() => _openFor != null;

  // "participants1" field.
  List<ParticipantsUserStruct>? _participants1;
  List<ParticipantsUserStruct> get participants1 => _participants1 ?? const [];
  bool hasParticipants1() => _participants1 != null;

  // "participantsChannel" field.
  List<ParticpantsCPStruct>? _participantsChannel;
  List<ParticpantsCPStruct> get participantsChannel =>
      _participantsChannel ?? const [];
  bool hasParticipantsChannel() => _participantsChannel != null;

  // "participantsClubMember" field.
  List<ParticpantsMembersStruct>? _participantsClubMember;
  List<ParticpantsMembersStruct> get participantsClubMember =>
      _participantsClubMember ?? const [];
  bool hasParticipantsClubMember() => _participantsClubMember != null;

  // "winner" field.
  String? _winner;
  String get winner => _winner ?? '';
  bool hasWinner() => _winner != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "dateRange" field.
  List<int>? _dateRange;
  List<int> get dateRange => _dateRange ?? const [];
  bool hasDateRange() => _dateRange != null;

  // "coverPhoto" field.
  String? _coverPhoto;
  String get coverPhoto => _coverPhoto ?? '';
  bool hasCoverPhoto() => _coverPhoto != null;

  // "numberParticpant" field.
  int? _numberParticpant;
  int get numberParticpant => _numberParticpant ?? 0;
  bool hasNumberParticpant() => _numberParticpant != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _title = snapshotData['Title'] as String?;
    _description = snapshotData['Description'] as String?;
    _subTitle = snapshotData['subTitle'] as String?;
    _createdbyRef = snapshotData['createdbyRef'] as DocumentReference?;
    _createdbyName = snapshotData['createdbyName'] as String?;
    _createdbyPic = snapshotData['createdbyPic'] as String?;
    _conditions = snapshotData['conditions'] as String?;
    _reward = castToType<int>(snapshotData['reward']);
    _openFor = snapshotData['openFor'] as String?;
    _participants1 = getStructList(
      snapshotData['participants1'],
      ParticipantsUserStruct.fromMap,
    );
    _participantsChannel = getStructList(
      snapshotData['participantsChannel'],
      ParticpantsCPStruct.fromMap,
    );
    _participantsClubMember = getStructList(
      snapshotData['participantsClubMember'],
      ParticpantsMembersStruct.fromMap,
    );
    _winner = snapshotData['winner'] as String?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _dateRange = getDataList(snapshotData['dateRange']);
    _coverPhoto = snapshotData['coverPhoto'] as String?;
    _numberParticpant = castToType<int>(snapshotData['numberParticpant']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('contests')
          : FirebaseFirestore.instance.collectionGroup('contests');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('contests').doc(id);

  static Stream<ContestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContestsRecord.fromSnapshot(s));

  static Future<ContestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContestsRecord.fromSnapshot(s));

  static ContestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContestsRecordData({
  DateTime? createdAt,
  DateTime? endDate,
  String? title,
  String? description,
  String? subTitle,
  DocumentReference? createdbyRef,
  String? createdbyName,
  String? createdbyPic,
  String? conditions,
  int? reward,
  String? openFor,
  String? winner,
  DateTime? startDate,
  String? coverPhoto,
  int? numberParticpant,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdAt': createdAt,
      'endDate': endDate,
      'Title': title,
      'Description': description,
      'subTitle': subTitle,
      'createdbyRef': createdbyRef,
      'createdbyName': createdbyName,
      'createdbyPic': createdbyPic,
      'conditions': conditions,
      'reward': reward,
      'openFor': openFor,
      'winner': winner,
      'startDate': startDate,
      'coverPhoto': coverPhoto,
      'numberParticpant': numberParticpant,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContestsRecordDocumentEquality implements Equality<ContestsRecord> {
  const ContestsRecordDocumentEquality();

  @override
  bool equals(ContestsRecord? e1, ContestsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdAt == e2?.createdAt &&
        e1?.endDate == e2?.endDate &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.subTitle == e2?.subTitle &&
        e1?.createdbyRef == e2?.createdbyRef &&
        e1?.createdbyName == e2?.createdbyName &&
        e1?.createdbyPic == e2?.createdbyPic &&
        e1?.conditions == e2?.conditions &&
        e1?.reward == e2?.reward &&
        e1?.openFor == e2?.openFor &&
        listEquality.equals(e1?.participants1, e2?.participants1) &&
        listEquality.equals(e1?.participantsChannel, e2?.participantsChannel) &&
        listEquality.equals(
            e1?.participantsClubMember, e2?.participantsClubMember) &&
        e1?.winner == e2?.winner &&
        e1?.startDate == e2?.startDate &&
        listEquality.equals(e1?.dateRange, e2?.dateRange) &&
        e1?.coverPhoto == e2?.coverPhoto &&
        e1?.numberParticpant == e2?.numberParticpant;
  }

  @override
  int hash(ContestsRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.endDate,
        e?.title,
        e?.description,
        e?.subTitle,
        e?.createdbyRef,
        e?.createdbyName,
        e?.createdbyPic,
        e?.conditions,
        e?.reward,
        e?.openFor,
        e?.participants1,
        e?.participantsChannel,
        e?.participantsClubMember,
        e?.winner,
        e?.startDate,
        e?.dateRange,
        e?.coverPhoto,
        e?.numberParticpant
      ]);

  @override
  bool isValidKey(Object? o) => o is ContestsRecord;
}
