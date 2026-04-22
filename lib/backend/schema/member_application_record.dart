import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MemberApplicationRecord extends FirestoreRecord {
  MemberApplicationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "applicationType" field.
  String? _applicationType;
  String get applicationType => _applicationType ?? '';
  bool hasApplicationType() => _applicationType != null;

  // "selectedCourse" field.
  DocumentReference? _selectedCourse;
  DocumentReference? get selectedCourse => _selectedCourse;
  bool hasSelectedCourse() => _selectedCourse != null;

  // "selectedPass" field.
  DocumentReference? _selectedPass;
  DocumentReference? get selectedPass => _selectedPass;
  bool hasSelectedPass() => _selectedPass != null;

  // "refUser" field.
  DocumentReference? _refUser;
  DocumentReference? get refUser => _refUser;
  bool hasRefUser() => _refUser != null;

  // "applicationStatus" field.
  String? _applicationStatus;
  String get applicationStatus => _applicationStatus ?? '';
  bool hasApplicationStatus() => _applicationStatus != null;

  // "selectedBranch" field.
  DocumentReference? _selectedBranch;
  DocumentReference? get selectedBranch => _selectedBranch;
  bool hasSelectedBranch() => _selectedBranch != null;

  // "multi_branch" field.
  bool? _multiBranch;
  bool get multiBranch => _multiBranch ?? false;
  bool hasMultiBranch() => _multiBranch != null;

  // "termsaccepted" field.
  bool? _termsaccepted;
  bool get termsaccepted => _termsaccepted ?? false;
  bool hasTermsaccepted() => _termsaccepted != null;

  // "courseID" field.
  String? _courseID;
  String get courseID => _courseID ?? '';
  bool hasCourseID() => _courseID != null;

  // "passID" field.
  String? _passID;
  String get passID => _passID ?? '';
  bool hasPassID() => _passID != null;

  // "paymentStatus" field.
  String? _paymentStatus;
  String get paymentStatus => _paymentStatus ?? '';
  bool hasPaymentStatus() => _paymentStatus != null;

  // "previousMember" field.
  bool? _previousMember;
  bool get previousMember => _previousMember ?? false;
  bool hasPreviousMember() => _previousMember != null;

  // "memberReference" field.
  DocumentReference? _memberReference;
  DocumentReference? get memberReference => _memberReference;
  bool hasMemberReference() => _memberReference != null;

  // "memberID" field.
  String? _memberID;
  String get memberID => _memberID ?? '';
  bool hasMemberID() => _memberID != null;

  // "applicantName" field.
  String? _applicantName;
  String get applicantName => _applicantName ?? '';
  bool hasApplicantName() => _applicantName != null;

  // "applicantGender" field.
  String? _applicantGender;
  String get applicantGender => _applicantGender ?? '';
  bool hasApplicantGender() => _applicantGender != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "profilePic" field.
  String? _profilePic;
  String get profilePic => _profilePic ?? '';
  bool hasProfilePic() => _profilePic != null;

  // "selectedPlan" field.
  DocumentReference? _selectedPlan;
  DocumentReference? get selectedPlan => _selectedPlan;
  bool hasSelectedPlan() => _selectedPlan != null;

  // "branchName" field.
  String? _branchName;
  String get branchName => _branchName ?? '';
  bool hasBranchName() => _branchName != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _applicationType = snapshotData['applicationType'] as String?;
    _selectedCourse = snapshotData['selectedCourse'] as DocumentReference?;
    _selectedPass = snapshotData['selectedPass'] as DocumentReference?;
    _refUser = snapshotData['refUser'] as DocumentReference?;
    _applicationStatus = snapshotData['applicationStatus'] as String?;
    _selectedBranch = snapshotData['selectedBranch'] as DocumentReference?;
    _multiBranch = snapshotData['multi_branch'] as bool?;
    _termsaccepted = snapshotData['termsaccepted'] as bool?;
    _courseID = snapshotData['courseID'] as String?;
    _passID = snapshotData['passID'] as String?;
    _paymentStatus = snapshotData['paymentStatus'] as String?;
    _previousMember = snapshotData['previousMember'] as bool?;
    _memberReference = snapshotData['memberReference'] as DocumentReference?;
    _memberID = snapshotData['memberID'] as String?;
    _applicantName = snapshotData['applicantName'] as String?;
    _applicantGender = snapshotData['applicantGender'] as String?;
    _phoneNumber = snapshotData['phoneNumber'] as String?;
    _email = snapshotData['email'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _profilePic = snapshotData['profilePic'] as String?;
    _selectedPlan = snapshotData['selectedPlan'] as DocumentReference?;
    _branchName = snapshotData['branchName'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('memberApplication')
          : FirebaseFirestore.instance.collectionGroup('memberApplication');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('memberApplication').doc(id);

  static Stream<MemberApplicationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MemberApplicationRecord.fromSnapshot(s));

  static Future<MemberApplicationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => MemberApplicationRecord.fromSnapshot(s));

  static MemberApplicationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MemberApplicationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MemberApplicationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MemberApplicationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MemberApplicationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MemberApplicationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMemberApplicationRecordData({
  DateTime? createdAt,
  String? applicationType,
  DocumentReference? selectedCourse,
  DocumentReference? selectedPass,
  DocumentReference? refUser,
  String? applicationStatus,
  DocumentReference? selectedBranch,
  bool? multiBranch,
  bool? termsaccepted,
  String? courseID,
  String? passID,
  String? paymentStatus,
  bool? previousMember,
  DocumentReference? memberReference,
  String? memberID,
  String? applicantName,
  String? applicantGender,
  String? phoneNumber,
  String? email,
  int? age,
  String? profilePic,
  DocumentReference? selectedPlan,
  String? branchName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdAt': createdAt,
      'applicationType': applicationType,
      'selectedCourse': selectedCourse,
      'selectedPass': selectedPass,
      'refUser': refUser,
      'applicationStatus': applicationStatus,
      'selectedBranch': selectedBranch,
      'multi_branch': multiBranch,
      'termsaccepted': termsaccepted,
      'courseID': courseID,
      'passID': passID,
      'paymentStatus': paymentStatus,
      'previousMember': previousMember,
      'memberReference': memberReference,
      'memberID': memberID,
      'applicantName': applicantName,
      'applicantGender': applicantGender,
      'phoneNumber': phoneNumber,
      'email': email,
      'age': age,
      'profilePic': profilePic,
      'selectedPlan': selectedPlan,
      'branchName': branchName,
    }.withoutNulls,
  );

  return firestoreData;
}

class MemberApplicationRecordDocumentEquality
    implements Equality<MemberApplicationRecord> {
  const MemberApplicationRecordDocumentEquality();

  @override
  bool equals(MemberApplicationRecord? e1, MemberApplicationRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.applicationType == e2?.applicationType &&
        e1?.selectedCourse == e2?.selectedCourse &&
        e1?.selectedPass == e2?.selectedPass &&
        e1?.refUser == e2?.refUser &&
        e1?.applicationStatus == e2?.applicationStatus &&
        e1?.selectedBranch == e2?.selectedBranch &&
        e1?.multiBranch == e2?.multiBranch &&
        e1?.termsaccepted == e2?.termsaccepted &&
        e1?.courseID == e2?.courseID &&
        e1?.passID == e2?.passID &&
        e1?.paymentStatus == e2?.paymentStatus &&
        e1?.previousMember == e2?.previousMember &&
        e1?.memberReference == e2?.memberReference &&
        e1?.memberID == e2?.memberID &&
        e1?.applicantName == e2?.applicantName &&
        e1?.applicantGender == e2?.applicantGender &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.email == e2?.email &&
        e1?.age == e2?.age &&
        e1?.profilePic == e2?.profilePic &&
        e1?.selectedPlan == e2?.selectedPlan &&
        e1?.branchName == e2?.branchName;
  }

  @override
  int hash(MemberApplicationRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.applicationType,
        e?.selectedCourse,
        e?.selectedPass,
        e?.refUser,
        e?.applicationStatus,
        e?.selectedBranch,
        e?.multiBranch,
        e?.termsaccepted,
        e?.courseID,
        e?.passID,
        e?.paymentStatus,
        e?.previousMember,
        e?.memberReference,
        e?.memberID,
        e?.applicantName,
        e?.applicantGender,
        e?.phoneNumber,
        e?.email,
        e?.age,
        e?.profilePic,
        e?.selectedPlan,
        e?.branchName
      ]);

  @override
  bool isValidKey(Object? o) => o is MemberApplicationRecord;
}
