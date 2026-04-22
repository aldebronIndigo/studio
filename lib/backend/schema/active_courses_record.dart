import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActiveCoursesRecord extends FirestoreRecord {
  ActiveCoursesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdbyPic" field.
  String? _createdbyPic;
  String get createdbyPic => _createdbyPic ?? '';
  bool hasCreatedbyPic() => _createdbyPic != null;

  // "courseName" field.
  String? _courseName;
  String get courseName => _courseName ?? '';
  bool hasCourseName() => _courseName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "level" field.
  String? _level;
  String get level => _level ?? '';
  bool hasLevel() => _level != null;

  // "coverImage" field.
  String? _coverImage;
  String get coverImage => _coverImage ?? '';
  bool hasCoverImage() => _coverImage != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "refStudio" field.
  DocumentReference? _refStudio;
  DocumentReference? get refStudio => _refStudio;
  bool hasRefStudio() => _refStudio != null;

  // "refBranch" field.
  List<DocumentReference>? _refBranch;
  List<DocumentReference> get refBranch => _refBranch ?? const [];
  bool hasRefBranch() => _refBranch != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "durationDays" field.
  int? _durationDays;
  int get durationDays => _durationDays ?? 0;
  bool hasDurationDays() => _durationDays != null;

  // "totalSessions" field.
  int? _totalSessions;
  int get totalSessions => _totalSessions ?? 0;
  bool hasTotalSessions() => _totalSessions != null;

  // "totalHours" field.
  int? _totalHours;
  int get totalHours => _totalHours ?? 0;
  bool hasTotalHours() => _totalHours != null;

  // "enrollmentCount" field.
  int? _enrollmentCount;
  int get enrollmentCount => _enrollmentCount ?? 0;
  bool hasEnrollmentCount() => _enrollmentCount != null;

  // "waitlistEnabled" field.
  bool? _waitlistEnabled;
  bool get waitlistEnabled => _waitlistEnabled ?? false;
  bool hasWaitlistEnabled() => _waitlistEnabled != null;

  // "feeFrequency" field.
  String? _feeFrequency;
  String get feeFrequency => _feeFrequency ?? '';
  bool hasFeeFrequency() => _feeFrequency != null;

  // "courseFee" field.
  double? _courseFee;
  double get courseFee => _courseFee ?? 0.0;
  bool hasCourseFee() => _courseFee != null;

  // "registrationFee" field.
  double? _registrationFee;
  double get registrationFee => _registrationFee ?? 0.0;
  bool hasRegistrationFee() => _registrationFee != null;

  // "ratings" field.
  double? _ratings;
  double get ratings => _ratings ?? 0.0;
  bool hasRatings() => _ratings != null;

  // "status" field.
  CourseStatus? _status;
  CourseStatus? get status => _status;
  bool hasStatus() => _status != null;

  // "hourspersession" field.
  double? _hourspersession;
  double get hourspersession => _hourspersession ?? 0.0;
  bool hasHourspersession() => _hourspersession != null;

  // "trialDays" field.
  int? _trialDays;
  int get trialDays => _trialDays ?? 0;
  bool hasTrialDays() => _trialDays != null;

  // "packageRef" field.
  List<DocumentReference>? _packageRef;
  List<DocumentReference> get packageRef => _packageRef ?? const [];
  bool hasPackageRef() => _packageRef != null;

  // "multiBranch" field.
  bool? _multiBranch;
  bool get multiBranch => _multiBranch ?? false;
  bool hasMultiBranch() => _multiBranch != null;

  // "courseID" field.
  String? _courseID;
  String get courseID => _courseID ?? '';
  bool hasCourseID() => _courseID != null;

  // "createdbyName" field.
  String? _createdbyName;
  String get createdbyName => _createdbyName ?? '';
  bool hasCreatedbyName() => _createdbyName != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdbyPic = snapshotData['createdbyPic'] as String?;
    _courseName = snapshotData['courseName'] as String?;
    _description = snapshotData['description'] as String?;
    _level = snapshotData['level'] as String?;
    _coverImage = snapshotData['coverImage'] as String?;
    _category = snapshotData['category'] as String?;
    _refStudio = snapshotData['refStudio'] as DocumentReference?;
    _refBranch = getDataList(snapshotData['refBranch']);
    _startDate = snapshotData['startDate'] as DateTime?;
    _endTime = snapshotData['endTime'] as DateTime?;
    _durationDays = castToType<int>(snapshotData['durationDays']);
    _totalSessions = castToType<int>(snapshotData['totalSessions']);
    _totalHours = castToType<int>(snapshotData['totalHours']);
    _enrollmentCount = castToType<int>(snapshotData['enrollmentCount']);
    _waitlistEnabled = snapshotData['waitlistEnabled'] as bool?;
    _feeFrequency = snapshotData['feeFrequency'] as String?;
    _courseFee = castToType<double>(snapshotData['courseFee']);
    _registrationFee = castToType<double>(snapshotData['registrationFee']);
    _ratings = castToType<double>(snapshotData['ratings']);
    _status = snapshotData['status'] is CourseStatus
        ? snapshotData['status']
        : deserializeEnum<CourseStatus>(snapshotData['status']);
    _hourspersession = castToType<double>(snapshotData['hourspersession']);
    _trialDays = castToType<int>(snapshotData['trialDays']);
    _packageRef = getDataList(snapshotData['packageRef']);
    _multiBranch = snapshotData['multiBranch'] as bool?;
    _courseID = snapshotData['courseID'] as String?;
    _createdbyName = snapshotData['createdbyName'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('activeCourses')
          : FirebaseFirestore.instance.collectionGroup('activeCourses');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('activeCourses').doc(id);

  static Stream<ActiveCoursesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActiveCoursesRecord.fromSnapshot(s));

  static Future<ActiveCoursesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActiveCoursesRecord.fromSnapshot(s));

  static ActiveCoursesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActiveCoursesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActiveCoursesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActiveCoursesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActiveCoursesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActiveCoursesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActiveCoursesRecordData({
  String? createdbyPic,
  String? courseName,
  String? description,
  String? level,
  String? coverImage,
  String? category,
  DocumentReference? refStudio,
  DateTime? startDate,
  DateTime? endTime,
  int? durationDays,
  int? totalSessions,
  int? totalHours,
  int? enrollmentCount,
  bool? waitlistEnabled,
  String? feeFrequency,
  double? courseFee,
  double? registrationFee,
  double? ratings,
  CourseStatus? status,
  double? hourspersession,
  int? trialDays,
  bool? multiBranch,
  String? courseID,
  String? createdbyName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdbyPic': createdbyPic,
      'courseName': courseName,
      'description': description,
      'level': level,
      'coverImage': coverImage,
      'category': category,
      'refStudio': refStudio,
      'startDate': startDate,
      'endTime': endTime,
      'durationDays': durationDays,
      'totalSessions': totalSessions,
      'totalHours': totalHours,
      'enrollmentCount': enrollmentCount,
      'waitlistEnabled': waitlistEnabled,
      'feeFrequency': feeFrequency,
      'courseFee': courseFee,
      'registrationFee': registrationFee,
      'ratings': ratings,
      'status': status,
      'hourspersession': hourspersession,
      'trialDays': trialDays,
      'multiBranch': multiBranch,
      'courseID': courseID,
      'createdbyName': createdbyName,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActiveCoursesRecordDocumentEquality
    implements Equality<ActiveCoursesRecord> {
  const ActiveCoursesRecordDocumentEquality();

  @override
  bool equals(ActiveCoursesRecord? e1, ActiveCoursesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdbyPic == e2?.createdbyPic &&
        e1?.courseName == e2?.courseName &&
        e1?.description == e2?.description &&
        e1?.level == e2?.level &&
        e1?.coverImage == e2?.coverImage &&
        e1?.category == e2?.category &&
        e1?.refStudio == e2?.refStudio &&
        listEquality.equals(e1?.refBranch, e2?.refBranch) &&
        e1?.startDate == e2?.startDate &&
        e1?.endTime == e2?.endTime &&
        e1?.durationDays == e2?.durationDays &&
        e1?.totalSessions == e2?.totalSessions &&
        e1?.totalHours == e2?.totalHours &&
        e1?.enrollmentCount == e2?.enrollmentCount &&
        e1?.waitlistEnabled == e2?.waitlistEnabled &&
        e1?.feeFrequency == e2?.feeFrequency &&
        e1?.courseFee == e2?.courseFee &&
        e1?.registrationFee == e2?.registrationFee &&
        e1?.ratings == e2?.ratings &&
        e1?.status == e2?.status &&
        e1?.hourspersession == e2?.hourspersession &&
        e1?.trialDays == e2?.trialDays &&
        listEquality.equals(e1?.packageRef, e2?.packageRef) &&
        e1?.multiBranch == e2?.multiBranch &&
        e1?.courseID == e2?.courseID &&
        e1?.createdbyName == e2?.createdbyName;
  }

  @override
  int hash(ActiveCoursesRecord? e) => const ListEquality().hash([
        e?.createdbyPic,
        e?.courseName,
        e?.description,
        e?.level,
        e?.coverImage,
        e?.category,
        e?.refStudio,
        e?.refBranch,
        e?.startDate,
        e?.endTime,
        e?.durationDays,
        e?.totalSessions,
        e?.totalHours,
        e?.enrollmentCount,
        e?.waitlistEnabled,
        e?.feeFrequency,
        e?.courseFee,
        e?.registrationFee,
        e?.ratings,
        e?.status,
        e?.hourspersession,
        e?.trialDays,
        e?.packageRef,
        e?.multiBranch,
        e?.courseID,
        e?.createdbyName
      ]);

  @override
  bool isValidKey(Object? o) => o is ActiveCoursesRecord;
}
