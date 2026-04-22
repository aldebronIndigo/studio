import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupsRecord extends FirestoreRecord {
  GroupsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "about" field.
  String? _about;
  String get about => _about ?? '';
  bool hasAbout() => _about != null;

  // "Category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "joiningPolicy" field.
  String? _joiningPolicy;
  String get joiningPolicy => _joiningPolicy ?? '';
  bool hasJoiningPolicy() => _joiningPolicy != null;

  // "maxMembers" field.
  int? _maxMembers;
  int get maxMembers => _maxMembers ?? 0;
  bool hasMaxMembers() => _maxMembers != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  bool hasTags() => _tags != null;

  // "adminRef" field.
  DocumentReference? _adminRef;
  DocumentReference? get adminRef => _adminRef;
  bool hasAdminRef() => _adminRef != null;

  // "adminName" field.
  String? _adminName;
  String get adminName => _adminName ?? '';
  bool hasAdminName() => _adminName != null;

  // "adminprofilePic" field.
  String? _adminprofilePic;
  String get adminprofilePic => _adminprofilePic ?? '';
  bool hasAdminprofilePic() => _adminprofilePic != null;

  // "moderatorRef" field.
  List<DocumentReference>? _moderatorRef;
  List<DocumentReference> get moderatorRef => _moderatorRef ?? const [];
  bool hasModeratorRef() => _moderatorRef != null;

  // "logoURL" field.
  String? _logoURL;
  String get logoURL => _logoURL ?? '';
  bool hasLogoURL() => _logoURL != null;

  // "coverImage" field.
  String? _coverImage;
  String get coverImage => _coverImage ?? '';
  bool hasCoverImage() => _coverImage != null;

  // "rules" field.
  String? _rules;
  String get rules => _rules ?? '';
  bool hasRules() => _rules != null;

  // "status" field.
  GroupStatus? _status;
  GroupStatus? get status => _status;
  bool hasStatus() => _status != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "lastUpdated" field.
  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _lastUpdated;
  bool hasLastUpdated() => _lastUpdated != null;

  // "members" field.
  List<ParticpantsMembersStruct>? _members;
  List<ParticpantsMembersStruct> get members => _members ?? const [];
  bool hasMembers() => _members != null;

  // "visibility" field.
  String? _visibility;
  String get visibility => _visibility ?? '';
  bool hasVisibility() => _visibility != null;

  // "memberNumber" field.
  int? _memberNumber;
  int get memberNumber => _memberNumber ?? 0;
  bool hasMemberNumber() => _memberNumber != null;

  // "eventNumbers" field.
  int? _eventNumbers;
  int get eventNumbers => _eventNumbers ?? 0;
  bool hasEventNumbers() => _eventNumbers != null;

  // "groupRatings" field.
  double? _groupRatings;
  double get groupRatings => _groupRatings ?? 0.0;
  bool hasGroupRatings() => _groupRatings != null;

  // "groupReviews" field.
  int? _groupReviews;
  int get groupReviews => _groupReviews ?? 0;
  bool hasGroupReviews() => _groupReviews != null;

  // "groupEvents" field.
  List<DocumentReference>? _groupEvents;
  List<DocumentReference> get groupEvents => _groupEvents ?? const [];
  bool hasGroupEvents() => _groupEvents != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _about = snapshotData['about'] as String?;
    _category = snapshotData['Category'] as String?;
    _joiningPolicy = snapshotData['joiningPolicy'] as String?;
    _maxMembers = castToType<int>(snapshotData['maxMembers']);
    _tags = getDataList(snapshotData['tags']);
    _adminRef = snapshotData['adminRef'] as DocumentReference?;
    _adminName = snapshotData['adminName'] as String?;
    _adminprofilePic = snapshotData['adminprofilePic'] as String?;
    _moderatorRef = getDataList(snapshotData['moderatorRef']);
    _logoURL = snapshotData['logoURL'] as String?;
    _coverImage = snapshotData['coverImage'] as String?;
    _rules = snapshotData['rules'] as String?;
    _status = snapshotData['status'] is GroupStatus
        ? snapshotData['status']
        : deserializeEnum<GroupStatus>(snapshotData['status']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _lastUpdated = snapshotData['lastUpdated'] as DateTime?;
    _members = getStructList(
      snapshotData['members'],
      ParticpantsMembersStruct.fromMap,
    );
    _visibility = snapshotData['visibility'] as String?;
    _memberNumber = castToType<int>(snapshotData['memberNumber']);
    _eventNumbers = castToType<int>(snapshotData['eventNumbers']);
    _groupRatings = castToType<double>(snapshotData['groupRatings']);
    _groupReviews = castToType<int>(snapshotData['groupReviews']);
    _groupEvents = getDataList(snapshotData['groupEvents']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Groups')
          : FirebaseFirestore.instance.collectionGroup('Groups');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Groups').doc(id);

  static Stream<GroupsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupsRecord.fromSnapshot(s));

  static Future<GroupsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroupsRecord.fromSnapshot(s));

  static GroupsRecord fromSnapshot(DocumentSnapshot snapshot) => GroupsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupsRecordData({
  String? name,
  String? about,
  String? category,
  String? joiningPolicy,
  int? maxMembers,
  DocumentReference? adminRef,
  String? adminName,
  String? adminprofilePic,
  String? logoURL,
  String? coverImage,
  String? rules,
  GroupStatus? status,
  DateTime? createdAt,
  DateTime? lastUpdated,
  String? visibility,
  int? memberNumber,
  int? eventNumbers,
  double? groupRatings,
  int? groupReviews,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'about': about,
      'Category': category,
      'joiningPolicy': joiningPolicy,
      'maxMembers': maxMembers,
      'adminRef': adminRef,
      'adminName': adminName,
      'adminprofilePic': adminprofilePic,
      'logoURL': logoURL,
      'coverImage': coverImage,
      'rules': rules,
      'status': status,
      'createdAt': createdAt,
      'lastUpdated': lastUpdated,
      'visibility': visibility,
      'memberNumber': memberNumber,
      'eventNumbers': eventNumbers,
      'groupRatings': groupRatings,
      'groupReviews': groupReviews,
    }.withoutNulls,
  );

  return firestoreData;
}

class GroupsRecordDocumentEquality implements Equality<GroupsRecord> {
  const GroupsRecordDocumentEquality();

  @override
  bool equals(GroupsRecord? e1, GroupsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.about == e2?.about &&
        e1?.category == e2?.category &&
        e1?.joiningPolicy == e2?.joiningPolicy &&
        e1?.maxMembers == e2?.maxMembers &&
        listEquality.equals(e1?.tags, e2?.tags) &&
        e1?.adminRef == e2?.adminRef &&
        e1?.adminName == e2?.adminName &&
        e1?.adminprofilePic == e2?.adminprofilePic &&
        listEquality.equals(e1?.moderatorRef, e2?.moderatorRef) &&
        e1?.logoURL == e2?.logoURL &&
        e1?.coverImage == e2?.coverImage &&
        e1?.rules == e2?.rules &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt &&
        e1?.lastUpdated == e2?.lastUpdated &&
        listEquality.equals(e1?.members, e2?.members) &&
        e1?.visibility == e2?.visibility &&
        e1?.memberNumber == e2?.memberNumber &&
        e1?.eventNumbers == e2?.eventNumbers &&
        e1?.groupRatings == e2?.groupRatings &&
        e1?.groupReviews == e2?.groupReviews &&
        listEquality.equals(e1?.groupEvents, e2?.groupEvents);
  }

  @override
  int hash(GroupsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.about,
        e?.category,
        e?.joiningPolicy,
        e?.maxMembers,
        e?.tags,
        e?.adminRef,
        e?.adminName,
        e?.adminprofilePic,
        e?.moderatorRef,
        e?.logoURL,
        e?.coverImage,
        e?.rules,
        e?.status,
        e?.createdAt,
        e?.lastUpdated,
        e?.members,
        e?.visibility,
        e?.memberNumber,
        e?.eventNumbers,
        e?.groupRatings,
        e?.groupReviews,
        e?.groupEvents
      ]);

  @override
  bool isValidKey(Object? o) => o is GroupsRecord;
}
