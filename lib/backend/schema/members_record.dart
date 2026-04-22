import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MembersRecord extends FirestoreRecord {
  MembersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdat" field.
  DateTime? _createdat;
  DateTime? get createdat => _createdat;
  bool hasCreatedat() => _createdat != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "displayName" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "dob" field.
  DateTime? _dob;
  DateTime? get dob => _dob;
  bool hasDob() => _dob != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "profession" field.
  String? _profession;
  String get profession => _profession ?? '';
  bool hasProfession() => _profession != null;

  // "profilePic" field.
  String? _profilePic;
  String get profilePic => _profilePic ?? '';
  bool hasProfilePic() => _profilePic != null;

  // "intro" field.
  String? _intro;
  String get intro => _intro ?? '';
  bool hasIntro() => _intro != null;

  // "referralType" field.
  String? _referralType;
  String get referralType => _referralType ?? '';
  bool hasReferralType() => _referralType != null;

  // "referralId" field.
  DocumentReference? _referralId;
  DocumentReference? get referralId => _referralId;
  bool hasReferralId() => _referralId != null;

  // "memberId" field.
  String? _memberId;
  String get memberId => _memberId ?? '';
  bool hasMemberId() => _memberId != null;

  // "refUser" field.
  DocumentReference? _refUser;
  DocumentReference? get refUser => _refUser;
  bool hasRefUser() => _refUser != null;

  // "venue" field.
  String? _venue;
  String get venue => _venue ?? '';
  bool hasVenue() => _venue != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "zipCode" field.
  String? _zipCode;
  String get zipCode => _zipCode ?? '';
  bool hasZipCode() => _zipCode != null;

  // "status" field.
  MemberStatus? _status;
  MemberStatus? get status => _status;
  bool hasStatus() => _status != null;

  // "refStudio" field.
  DocumentReference? _refStudio;
  DocumentReference? get refStudio => _refStudio;
  bool hasRefStudio() => _refStudio != null;

  // "assignedBranch" field.
  DocumentReference? _assignedBranch;
  DocumentReference? get assignedBranch => _assignedBranch;
  bool hasAssignedBranch() => _assignedBranch != null;

  // "enrolledFor" field.
  String? _enrolledFor;
  String get enrolledFor => _enrolledFor ?? '';
  bool hasEnrolledFor() => _enrolledFor != null;

  // "preferredBranch" field.
  DocumentReference? _preferredBranch;
  DocumentReference? get preferredBranch => _preferredBranch;
  bool hasPreferredBranch() => _preferredBranch != null;

  // "selectedCourse" field.
  DocumentReference? _selectedCourse;
  DocumentReference? get selectedCourse => _selectedCourse;
  bool hasSelectedCourse() => _selectedCourse != null;

  // "termsAccepted" field.
  bool? _termsAccepted;
  bool get termsAccepted => _termsAccepted ?? false;
  bool hasTermsAccepted() => _termsAccepted != null;

  // "branchName" field.
  String? _branchName;
  String get branchName => _branchName ?? '';
  bool hasBranchName() => _branchName != null;

  // "joiningDate" field.
  DateTime? _joiningDate;
  DateTime? get joiningDate => _joiningDate;
  bool hasJoiningDate() => _joiningDate != null;

  // "selectedCourses" field.
  List<DocumentReference>? _selectedCourses;
  List<DocumentReference> get selectedCourses => _selectedCourses ?? const [];
  bool hasSelectedCourses() => _selectedCourses != null;

  // "activePass" field.
  DocumentReference? _activePass;
  DocumentReference? get activePass => _activePass;
  bool hasActivePass() => _activePass != null;

  // "activeCourses" field.
  List<DocumentReference>? _activeCourses;
  List<DocumentReference> get activeCourses => _activeCourses ?? const [];
  bool hasActiveCourses() => _activeCourses != null;

  // "activePassName" field.
  String? _activePassName;
  String get activePassName => _activePassName ?? '';
  bool hasActivePassName() => _activePassName != null;

  // "memberStatus" field.
  String? _memberStatus;
  String get memberStatus => _memberStatus ?? '';
  bool hasMemberStatus() => _memberStatus != null;

  // "OutstandingAmount" field.
  double? _outstandingAmount;
  double get outstandingAmount => _outstandingAmount ?? 0.0;
  bool hasOutstandingAmount() => _outstandingAmount != null;

  // "coins" field.
  int? _coins;
  int get coins => _coins ?? 0;
  bool hasCoins() => _coins != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  bool hasPoints() => _points != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdat = snapshotData['createdat'] as DateTime?;
    _firstName = snapshotData['firstName'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _displayName = snapshotData['displayName'] as String?;
    _dob = snapshotData['dob'] as DateTime?;
    _age = castToType<int>(snapshotData['age']);
    _phone = snapshotData['phone'] as String?;
    _email = snapshotData['email'] as String?;
    _gender = snapshotData['gender'] as String?;
    _profession = snapshotData['profession'] as String?;
    _profilePic = snapshotData['profilePic'] as String?;
    _intro = snapshotData['intro'] as String?;
    _referralType = snapshotData['referralType'] as String?;
    _referralId = snapshotData['referralId'] as DocumentReference?;
    _memberId = snapshotData['memberId'] as String?;
    _refUser = snapshotData['refUser'] as DocumentReference?;
    _venue = snapshotData['venue'] as String?;
    _address = snapshotData['address'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _country = snapshotData['country'] as String?;
    _zipCode = snapshotData['zipCode'] as String?;
    _status = snapshotData['status'] is MemberStatus
        ? snapshotData['status']
        : deserializeEnum<MemberStatus>(snapshotData['status']);
    _refStudio = snapshotData['refStudio'] as DocumentReference?;
    _assignedBranch = snapshotData['assignedBranch'] as DocumentReference?;
    _enrolledFor = snapshotData['enrolledFor'] as String?;
    _preferredBranch = snapshotData['preferredBranch'] as DocumentReference?;
    _selectedCourse = snapshotData['selectedCourse'] as DocumentReference?;
    _termsAccepted = snapshotData['termsAccepted'] as bool?;
    _branchName = snapshotData['branchName'] as String?;
    _joiningDate = snapshotData['joiningDate'] as DateTime?;
    _selectedCourses = getDataList(snapshotData['selectedCourses']);
    _activePass = snapshotData['activePass'] as DocumentReference?;
    _activeCourses = getDataList(snapshotData['activeCourses']);
    _activePassName = snapshotData['activePassName'] as String?;
    _memberStatus = snapshotData['memberStatus'] as String?;
    _outstandingAmount = castToType<double>(snapshotData['OutstandingAmount']);
    _coins = castToType<int>(snapshotData['coins']);
    _points = castToType<int>(snapshotData['points']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('members')
          : FirebaseFirestore.instance.collectionGroup('members');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('members').doc(id);

  static Stream<MembersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MembersRecord.fromSnapshot(s));

  static Future<MembersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MembersRecord.fromSnapshot(s));

  static MembersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MembersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MembersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MembersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MembersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MembersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMembersRecordData({
  DateTime? createdat,
  String? firstName,
  String? lastName,
  String? displayName,
  DateTime? dob,
  int? age,
  String? phone,
  String? email,
  String? gender,
  String? profession,
  String? profilePic,
  String? intro,
  String? referralType,
  DocumentReference? referralId,
  String? memberId,
  DocumentReference? refUser,
  String? venue,
  String? address,
  String? city,
  String? state,
  String? country,
  String? zipCode,
  MemberStatus? status,
  DocumentReference? refStudio,
  DocumentReference? assignedBranch,
  String? enrolledFor,
  DocumentReference? preferredBranch,
  DocumentReference? selectedCourse,
  bool? termsAccepted,
  String? branchName,
  DateTime? joiningDate,
  DocumentReference? activePass,
  String? activePassName,
  String? memberStatus,
  double? outstandingAmount,
  int? coins,
  int? points,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdat': createdat,
      'firstName': firstName,
      'lastName': lastName,
      'displayName': displayName,
      'dob': dob,
      'age': age,
      'phone': phone,
      'email': email,
      'gender': gender,
      'profession': profession,
      'profilePic': profilePic,
      'intro': intro,
      'referralType': referralType,
      'referralId': referralId,
      'memberId': memberId,
      'refUser': refUser,
      'venue': venue,
      'address': address,
      'city': city,
      'state': state,
      'country': country,
      'zipCode': zipCode,
      'status': status,
      'refStudio': refStudio,
      'assignedBranch': assignedBranch,
      'enrolledFor': enrolledFor,
      'preferredBranch': preferredBranch,
      'selectedCourse': selectedCourse,
      'termsAccepted': termsAccepted,
      'branchName': branchName,
      'joiningDate': joiningDate,
      'activePass': activePass,
      'activePassName': activePassName,
      'memberStatus': memberStatus,
      'OutstandingAmount': outstandingAmount,
      'coins': coins,
      'points': points,
    }.withoutNulls,
  );

  return firestoreData;
}

class MembersRecordDocumentEquality implements Equality<MembersRecord> {
  const MembersRecordDocumentEquality();

  @override
  bool equals(MembersRecord? e1, MembersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdat == e2?.createdat &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.displayName == e2?.displayName &&
        e1?.dob == e2?.dob &&
        e1?.age == e2?.age &&
        e1?.phone == e2?.phone &&
        e1?.email == e2?.email &&
        e1?.gender == e2?.gender &&
        e1?.profession == e2?.profession &&
        e1?.profilePic == e2?.profilePic &&
        e1?.intro == e2?.intro &&
        e1?.referralType == e2?.referralType &&
        e1?.referralId == e2?.referralId &&
        e1?.memberId == e2?.memberId &&
        e1?.refUser == e2?.refUser &&
        e1?.venue == e2?.venue &&
        e1?.address == e2?.address &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.country == e2?.country &&
        e1?.zipCode == e2?.zipCode &&
        e1?.status == e2?.status &&
        e1?.refStudio == e2?.refStudio &&
        e1?.assignedBranch == e2?.assignedBranch &&
        e1?.enrolledFor == e2?.enrolledFor &&
        e1?.preferredBranch == e2?.preferredBranch &&
        e1?.selectedCourse == e2?.selectedCourse &&
        e1?.termsAccepted == e2?.termsAccepted &&
        e1?.branchName == e2?.branchName &&
        e1?.joiningDate == e2?.joiningDate &&
        listEquality.equals(e1?.selectedCourses, e2?.selectedCourses) &&
        e1?.activePass == e2?.activePass &&
        listEquality.equals(e1?.activeCourses, e2?.activeCourses) &&
        e1?.activePassName == e2?.activePassName &&
        e1?.memberStatus == e2?.memberStatus &&
        e1?.outstandingAmount == e2?.outstandingAmount &&
        e1?.coins == e2?.coins &&
        e1?.points == e2?.points;
  }

  @override
  int hash(MembersRecord? e) => const ListEquality().hash([
        e?.createdat,
        e?.firstName,
        e?.lastName,
        e?.displayName,
        e?.dob,
        e?.age,
        e?.phone,
        e?.email,
        e?.gender,
        e?.profession,
        e?.profilePic,
        e?.intro,
        e?.referralType,
        e?.referralId,
        e?.memberId,
        e?.refUser,
        e?.venue,
        e?.address,
        e?.city,
        e?.state,
        e?.country,
        e?.zipCode,
        e?.status,
        e?.refStudio,
        e?.assignedBranch,
        e?.enrolledFor,
        e?.preferredBranch,
        e?.selectedCourse,
        e?.termsAccepted,
        e?.branchName,
        e?.joiningDate,
        e?.selectedCourses,
        e?.activePass,
        e?.activeCourses,
        e?.activePassName,
        e?.memberStatus,
        e?.outstandingAmount,
        e?.coins,
        e?.points
      ]);

  @override
  bool isValidKey(Object? o) => o is MembersRecord;
}
