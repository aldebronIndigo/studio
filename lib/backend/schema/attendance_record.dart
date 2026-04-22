import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AttendanceRecord extends FirestoreRecord {
  AttendanceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "refStaf" field.
  DocumentReference? _refStaf;
  DocumentReference? get refStaf => _refStaf;
  bool hasRefStaf() => _refStaf != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "dateInteger" field.
  String? _dateInteger;
  String get dateInteger => _dateInteger ?? '';
  bool hasDateInteger() => _dateInteger != null;

  // "shiftStartedAt" field.
  DateTime? _shiftStartedAt;
  DateTime? get shiftStartedAt => _shiftStartedAt;
  bool hasShiftStartedAt() => _shiftStartedAt != null;

  // "shiftEndedAt" field.
  DateTime? _shiftEndedAt;
  DateTime? get shiftEndedAt => _shiftEndedAt;
  bool hasShiftEndedAt() => _shiftEndedAt != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  bool hasDuration() => _duration != null;

  // "overTime" field.
  int? _overTime;
  int get overTime => _overTime ?? 0;
  bool hasOverTime() => _overTime != null;

  // "shiftAmount" field.
  double? _shiftAmount;
  double get shiftAmount => _shiftAmount ?? 0.0;
  bool hasShiftAmount() => _shiftAmount != null;

  // "dateString" field.
  String? _dateString;
  String get dateString => _dateString ?? '';
  bool hasDateString() => _dateString != null;

  // "staffName" field.
  String? _staffName;
  String get staffName => _staffName ?? '';
  bool hasStaffName() => _staffName != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "status" field.
  AttenStatus? _status;
  AttenStatus? get status => _status;
  bool hasStatus() => _status != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _refStaf = snapshotData['refStaf'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _dateInteger = snapshotData['dateInteger'] as String?;
    _shiftStartedAt = snapshotData['shiftStartedAt'] as DateTime?;
    _shiftEndedAt = snapshotData['shiftEndedAt'] as DateTime?;
    _duration = castToType<int>(snapshotData['duration']);
    _overTime = castToType<int>(snapshotData['overTime']);
    _shiftAmount = castToType<double>(snapshotData['shiftAmount']);
    _dateString = snapshotData['dateString'] as String?;
    _staffName = snapshotData['staffName'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _status = snapshotData['status'] is AttenStatus
        ? snapshotData['status']
        : deserializeEnum<AttenStatus>(snapshotData['status']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('attendance')
          : FirebaseFirestore.instance.collectionGroup('attendance');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('attendance').doc(id);

  static Stream<AttendanceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AttendanceRecord.fromSnapshot(s));

  static Future<AttendanceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AttendanceRecord.fromSnapshot(s));

  static AttendanceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AttendanceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AttendanceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AttendanceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AttendanceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AttendanceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAttendanceRecordData({
  DocumentReference? refStaf,
  DateTime? date,
  String? dateInteger,
  DateTime? shiftStartedAt,
  DateTime? shiftEndedAt,
  int? duration,
  int? overTime,
  double? shiftAmount,
  String? dateString,
  String? staffName,
  LatLng? location,
  AttenStatus? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'refStaf': refStaf,
      'date': date,
      'dateInteger': dateInteger,
      'shiftStartedAt': shiftStartedAt,
      'shiftEndedAt': shiftEndedAt,
      'duration': duration,
      'overTime': overTime,
      'shiftAmount': shiftAmount,
      'dateString': dateString,
      'staffName': staffName,
      'location': location,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class AttendanceRecordDocumentEquality implements Equality<AttendanceRecord> {
  const AttendanceRecordDocumentEquality();

  @override
  bool equals(AttendanceRecord? e1, AttendanceRecord? e2) {
    return e1?.refStaf == e2?.refStaf &&
        e1?.date == e2?.date &&
        e1?.dateInteger == e2?.dateInteger &&
        e1?.shiftStartedAt == e2?.shiftStartedAt &&
        e1?.shiftEndedAt == e2?.shiftEndedAt &&
        e1?.duration == e2?.duration &&
        e1?.overTime == e2?.overTime &&
        e1?.shiftAmount == e2?.shiftAmount &&
        e1?.dateString == e2?.dateString &&
        e1?.staffName == e2?.staffName &&
        e1?.location == e2?.location &&
        e1?.status == e2?.status;
  }

  @override
  int hash(AttendanceRecord? e) => const ListEquality().hash([
        e?.refStaf,
        e?.date,
        e?.dateInteger,
        e?.shiftStartedAt,
        e?.shiftEndedAt,
        e?.duration,
        e?.overTime,
        e?.shiftAmount,
        e?.dateString,
        e?.staffName,
        e?.location,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is AttendanceRecord;
}
