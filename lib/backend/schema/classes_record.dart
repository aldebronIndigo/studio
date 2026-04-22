import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClassesRecord extends FirestoreRecord {
  ClassesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "createdbyRef" field.
  DocumentReference? _createdbyRef;
  DocumentReference? get createdbyRef => _createdbyRef;
  bool hasCreatedbyRef() => _createdbyRef != null;

  // "instructorRef" field.
  DocumentReference? _instructorRef;
  DocumentReference? get instructorRef => _instructorRef;
  bool hasInstructorRef() => _instructorRef != null;

  // "instructorPic" field.
  String? _instructorPic;
  String get instructorPic => _instructorPic ?? '';
  bool hasInstructorPic() => _instructorPic != null;

  // "instructorName" field.
  String? _instructorName;
  String get instructorName => _instructorName ?? '';
  bool hasInstructorName() => _instructorName != null;

  // "backupInstructors" field.
  List<BackupInstructorsStruct>? _backupInstructors;
  List<BackupInstructorsStruct> get backupInstructors =>
      _backupInstructors ?? const [];
  bool hasBackupInstructors() => _backupInstructors != null;

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "durationMinutes" field.
  String? _durationMinutes;
  String get durationMinutes => _durationMinutes ?? '';
  bool hasDurationMinutes() => _durationMinutes != null;

  // "weekdays" field.
  List<String>? _weekdays;
  List<String> get weekdays => _weekdays ?? const [];
  bool hasWeekdays() => _weekdays != null;

  // "capacity" field.
  int? _capacity;
  int get capacity => _capacity ?? 0;
  bool hasCapacity() => _capacity != null;

  // "enrolledStudents" field.
  int? _enrolledStudents;
  int get enrolledStudents => _enrolledStudents ?? 0;
  bool hasEnrolledStudents() => _enrolledStudents != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _createdbyRef = snapshotData['createdbyRef'] as DocumentReference?;
    _instructorRef = snapshotData['instructorRef'] as DocumentReference?;
    _instructorPic = snapshotData['instructorPic'] as String?;
    _instructorName = snapshotData['instructorName'] as String?;
    _backupInstructors = getStructList(
      snapshotData['backupInstructors'],
      BackupInstructorsStruct.fromMap,
    );
    _startTime = snapshotData['startTime'] as DateTime?;
    _endTime = snapshotData['endTime'] as DateTime?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _durationMinutes = snapshotData['durationMinutes'] as String?;
    _weekdays = getDataList(snapshotData['weekdays']);
    _capacity = castToType<int>(snapshotData['capacity']);
    _enrolledStudents = castToType<int>(snapshotData['enrolledStudents']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('classes')
          : FirebaseFirestore.instance.collectionGroup('classes');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('classes').doc(id);

  static Stream<ClassesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClassesRecord.fromSnapshot(s));

  static Future<ClassesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClassesRecord.fromSnapshot(s));

  static ClassesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClassesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClassesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClassesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClassesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClassesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClassesRecordData({
  DateTime? createdAt,
  String? name,
  String? description,
  DocumentReference? createdbyRef,
  DocumentReference? instructorRef,
  String? instructorPic,
  String? instructorName,
  DateTime? startTime,
  DateTime? endTime,
  DateTime? startDate,
  DateTime? endDate,
  String? durationMinutes,
  int? capacity,
  int? enrolledStudents,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdAt': createdAt,
      'name': name,
      'description': description,
      'createdbyRef': createdbyRef,
      'instructorRef': instructorRef,
      'instructorPic': instructorPic,
      'instructorName': instructorName,
      'startTime': startTime,
      'endTime': endTime,
      'startDate': startDate,
      'endDate': endDate,
      'durationMinutes': durationMinutes,
      'capacity': capacity,
      'enrolledStudents': enrolledStudents,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClassesRecordDocumentEquality implements Equality<ClassesRecord> {
  const ClassesRecordDocumentEquality();

  @override
  bool equals(ClassesRecord? e1, ClassesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdAt == e2?.createdAt &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.createdbyRef == e2?.createdbyRef &&
        e1?.instructorRef == e2?.instructorRef &&
        e1?.instructorPic == e2?.instructorPic &&
        e1?.instructorName == e2?.instructorName &&
        listEquality.equals(e1?.backupInstructors, e2?.backupInstructors) &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.durationMinutes == e2?.durationMinutes &&
        listEquality.equals(e1?.weekdays, e2?.weekdays) &&
        e1?.capacity == e2?.capacity &&
        e1?.enrolledStudents == e2?.enrolledStudents;
  }

  @override
  int hash(ClassesRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.name,
        e?.description,
        e?.createdbyRef,
        e?.instructorRef,
        e?.instructorPic,
        e?.instructorName,
        e?.backupInstructors,
        e?.startTime,
        e?.endTime,
        e?.startDate,
        e?.endDate,
        e?.durationMinutes,
        e?.weekdays,
        e?.capacity,
        e?.enrolledStudents
      ]);

  @override
  bool isValidKey(Object? o) => o is ClassesRecord;
}
