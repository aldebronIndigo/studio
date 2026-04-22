import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudioStaffRecord extends FirestoreRecord {
  StudioStaffRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "refUser" field.
  DocumentReference? _refUser;
  DocumentReference? get refUser => _refUser;
  bool hasRefUser() => _refUser != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "designation" field.
  String? _designation;
  String get designation => _designation ?? '';
  bool hasDesignation() => _designation != null;

  // "appliedAt" field.
  DateTime? _appliedAt;
  DateTime? get appliedAt => _appliedAt;
  bool hasAppliedAt() => _appliedAt != null;

  // "approvedAt" field.
  DateTime? _approvedAt;
  DateTime? get approvedAt => _approvedAt;
  bool hasApprovedAt() => _approvedAt != null;

  // "shiftStartTime" field.
  DateTime? _shiftStartTime;
  DateTime? get shiftStartTime => _shiftStartTime;
  bool hasShiftStartTime() => _shiftStartTime != null;

  // "shiftEndTime" field.
  DateTime? _shiftEndTime;
  DateTime? get shiftEndTime => _shiftEndTime;
  bool hasShiftEndTime() => _shiftEndTime != null;

  // "joiningDate" field.
  DateTime? _joiningDate;
  DateTime? get joiningDate => _joiningDate;
  bool hasJoiningDate() => _joiningDate != null;

  // "shiftDuration" field.
  int? _shiftDuration;
  int get shiftDuration => _shiftDuration ?? 0;
  bool hasShiftDuration() => _shiftDuration != null;

  // "StaffName" field.
  String? _staffName;
  String get staffName => _staffName ?? '';
  bool hasStaffName() => _staffName != null;

  // "dateofBirth" field.
  DateTime? _dateofBirth;
  DateTime? get dateofBirth => _dateofBirth;
  bool hasDateofBirth() => _dateofBirth != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "profilePic" field.
  String? _profilePic;
  String get profilePic => _profilePic ?? '';
  bool hasProfilePic() => _profilePic != null;

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

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "personalEmail" field.
  String? _personalEmail;
  String get personalEmail => _personalEmail ?? '';
  bool hasPersonalEmail() => _personalEmail != null;

  // "contactNumber" field.
  String? _contactNumber;
  String get contactNumber => _contactNumber ?? '';
  bool hasContactNumber() => _contactNumber != null;

  // "officeEmail" field.
  String? _officeEmail;
  String get officeEmail => _officeEmail ?? '';
  bool hasOfficeEmail() => _officeEmail != null;

  // "officePhone" field.
  String? _officePhone;
  String get officePhone => _officePhone ?? '';
  bool hasOfficePhone() => _officePhone != null;

  // "salary" field.
  double? _salary;
  double get salary => _salary ?? 0.0;
  bool hasSalary() => _salary != null;

  // "frequency" field.
  String? _frequency;
  String get frequency => _frequency ?? '';
  bool hasFrequency() => _frequency != null;

  // "attendanceOpen" field.
  bool? _attendanceOpen;
  bool get attendanceOpen => _attendanceOpen ?? false;
  bool hasAttendanceOpen() => _attendanceOpen != null;

  // "taskNumbers" field.
  int? _taskNumbers;
  int get taskNumbers => _taskNumbers ?? 0;
  bool hasTaskNumbers() => _taskNumbers != null;

  // "attendanceNotes" field.
  List<AttendanceNotesStruct>? _attendanceNotes;
  List<AttendanceNotesStruct> get attendanceNotes =>
      _attendanceNotes ?? const [];
  bool hasAttendanceNotes() => _attendanceNotes != null;

  // "status" field.
  StaffStatus? _status;
  StaffStatus? get status => _status;
  bool hasStatus() => _status != null;

  // "resume" field.
  String? _resume;
  String get resume => _resume ?? '';
  bool hasResume() => _resume != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "refStudio" field.
  DocumentReference? _refStudio;
  DocumentReference? get refStudio => _refStudio;
  bool hasRefStudio() => _refStudio != null;

  // "termsaccepted" field.
  bool? _termsaccepted;
  bool get termsaccepted => _termsaccepted ?? false;
  bool hasTermsaccepted() => _termsaccepted != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _refUser = snapshotData['refUser'] as DocumentReference?;
    _role = snapshotData['role'] as String?;
    _designation = snapshotData['designation'] as String?;
    _appliedAt = snapshotData['appliedAt'] as DateTime?;
    _approvedAt = snapshotData['approvedAt'] as DateTime?;
    _shiftStartTime = snapshotData['shiftStartTime'] as DateTime?;
    _shiftEndTime = snapshotData['shiftEndTime'] as DateTime?;
    _joiningDate = snapshotData['joiningDate'] as DateTime?;
    _shiftDuration = castToType<int>(snapshotData['shiftDuration']);
    _staffName = snapshotData['StaffName'] as String?;
    _dateofBirth = snapshotData['dateofBirth'] as DateTime?;
    _age = castToType<int>(snapshotData['age']);
    _gender = snapshotData['gender'] as String?;
    _profilePic = snapshotData['profilePic'] as String?;
    _venue = snapshotData['venue'] as String?;
    _address = snapshotData['address'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _country = snapshotData['country'] as String?;
    _zipCode = snapshotData['zipCode'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _personalEmail = snapshotData['personalEmail'] as String?;
    _contactNumber = snapshotData['contactNumber'] as String?;
    _officeEmail = snapshotData['officeEmail'] as String?;
    _officePhone = snapshotData['officePhone'] as String?;
    _salary = castToType<double>(snapshotData['salary']);
    _frequency = snapshotData['frequency'] as String?;
    _attendanceOpen = snapshotData['attendanceOpen'] as bool?;
    _taskNumbers = castToType<int>(snapshotData['taskNumbers']);
    _attendanceNotes = getStructList(
      snapshotData['attendanceNotes'],
      AttendanceNotesStruct.fromMap,
    );
    _status = snapshotData['status'] is StaffStatus
        ? snapshotData['status']
        : deserializeEnum<StaffStatus>(snapshotData['status']);
    _resume = snapshotData['resume'] as String?;
    _department = snapshotData['department'] as String?;
    _refStudio = snapshotData['refStudio'] as DocumentReference?;
    _termsaccepted = snapshotData['termsaccepted'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('studioStaff')
          : FirebaseFirestore.instance.collectionGroup('studioStaff');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('studioStaff').doc(id);

  static Stream<StudioStaffRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudioStaffRecord.fromSnapshot(s));

  static Future<StudioStaffRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StudioStaffRecord.fromSnapshot(s));

  static StudioStaffRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudioStaffRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudioStaffRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudioStaffRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudioStaffRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudioStaffRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudioStaffRecordData({
  DocumentReference? refUser,
  String? role,
  String? designation,
  DateTime? appliedAt,
  DateTime? approvedAt,
  DateTime? shiftStartTime,
  DateTime? shiftEndTime,
  DateTime? joiningDate,
  int? shiftDuration,
  String? staffName,
  DateTime? dateofBirth,
  int? age,
  String? gender,
  String? profilePic,
  String? venue,
  String? address,
  String? city,
  String? state,
  String? country,
  String? zipCode,
  LatLng? location,
  String? personalEmail,
  String? contactNumber,
  String? officeEmail,
  String? officePhone,
  double? salary,
  String? frequency,
  bool? attendanceOpen,
  int? taskNumbers,
  StaffStatus? status,
  String? resume,
  String? department,
  DocumentReference? refStudio,
  bool? termsaccepted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'refUser': refUser,
      'role': role,
      'designation': designation,
      'appliedAt': appliedAt,
      'approvedAt': approvedAt,
      'shiftStartTime': shiftStartTime,
      'shiftEndTime': shiftEndTime,
      'joiningDate': joiningDate,
      'shiftDuration': shiftDuration,
      'StaffName': staffName,
      'dateofBirth': dateofBirth,
      'age': age,
      'gender': gender,
      'profilePic': profilePic,
      'venue': venue,
      'address': address,
      'city': city,
      'state': state,
      'country': country,
      'zipCode': zipCode,
      'location': location,
      'personalEmail': personalEmail,
      'contactNumber': contactNumber,
      'officeEmail': officeEmail,
      'officePhone': officePhone,
      'salary': salary,
      'frequency': frequency,
      'attendanceOpen': attendanceOpen,
      'taskNumbers': taskNumbers,
      'status': status,
      'resume': resume,
      'department': department,
      'refStudio': refStudio,
      'termsaccepted': termsaccepted,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudioStaffRecordDocumentEquality implements Equality<StudioStaffRecord> {
  const StudioStaffRecordDocumentEquality();

  @override
  bool equals(StudioStaffRecord? e1, StudioStaffRecord? e2) {
    const listEquality = ListEquality();
    return e1?.refUser == e2?.refUser &&
        e1?.role == e2?.role &&
        e1?.designation == e2?.designation &&
        e1?.appliedAt == e2?.appliedAt &&
        e1?.approvedAt == e2?.approvedAt &&
        e1?.shiftStartTime == e2?.shiftStartTime &&
        e1?.shiftEndTime == e2?.shiftEndTime &&
        e1?.joiningDate == e2?.joiningDate &&
        e1?.shiftDuration == e2?.shiftDuration &&
        e1?.staffName == e2?.staffName &&
        e1?.dateofBirth == e2?.dateofBirth &&
        e1?.age == e2?.age &&
        e1?.gender == e2?.gender &&
        e1?.profilePic == e2?.profilePic &&
        e1?.venue == e2?.venue &&
        e1?.address == e2?.address &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.country == e2?.country &&
        e1?.zipCode == e2?.zipCode &&
        e1?.location == e2?.location &&
        e1?.personalEmail == e2?.personalEmail &&
        e1?.contactNumber == e2?.contactNumber &&
        e1?.officeEmail == e2?.officeEmail &&
        e1?.officePhone == e2?.officePhone &&
        e1?.salary == e2?.salary &&
        e1?.frequency == e2?.frequency &&
        e1?.attendanceOpen == e2?.attendanceOpen &&
        e1?.taskNumbers == e2?.taskNumbers &&
        listEquality.equals(e1?.attendanceNotes, e2?.attendanceNotes) &&
        e1?.status == e2?.status &&
        e1?.resume == e2?.resume &&
        e1?.department == e2?.department &&
        e1?.refStudio == e2?.refStudio &&
        e1?.termsaccepted == e2?.termsaccepted;
  }

  @override
  int hash(StudioStaffRecord? e) => const ListEquality().hash([
        e?.refUser,
        e?.role,
        e?.designation,
        e?.appliedAt,
        e?.approvedAt,
        e?.shiftStartTime,
        e?.shiftEndTime,
        e?.joiningDate,
        e?.shiftDuration,
        e?.staffName,
        e?.dateofBirth,
        e?.age,
        e?.gender,
        e?.profilePic,
        e?.venue,
        e?.address,
        e?.city,
        e?.state,
        e?.country,
        e?.zipCode,
        e?.location,
        e?.personalEmail,
        e?.contactNumber,
        e?.officeEmail,
        e?.officePhone,
        e?.salary,
        e?.frequency,
        e?.attendanceOpen,
        e?.taskNumbers,
        e?.attendanceNotes,
        e?.status,
        e?.resume,
        e?.department,
        e?.refStudio,
        e?.termsaccepted
      ]);

  @override
  bool isValidKey(Object? o) => o is StudioStaffRecord;
}
