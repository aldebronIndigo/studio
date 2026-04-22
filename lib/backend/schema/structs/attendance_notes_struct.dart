// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AttendanceNotesStruct extends FFFirebaseStruct {
  AttendanceNotesStruct({
    DocumentReference? refStaff,
    DateTime? shiftStartTime,
    DateTime? shiftEndTime,
    DateTime? shiftDate,
    int? duration,
    int? overTime,
    LatLng? location,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _refStaff = refStaff,
        _shiftStartTime = shiftStartTime,
        _shiftEndTime = shiftEndTime,
        _shiftDate = shiftDate,
        _duration = duration,
        _overTime = overTime,
        _location = location,
        super(firestoreUtilData);

  // "refStaff" field.
  DocumentReference? _refStaff;
  DocumentReference? get refStaff => _refStaff;
  set refStaff(DocumentReference? val) => _refStaff = val;

  bool hasRefStaff() => _refStaff != null;

  // "shiftStartTime" field.
  DateTime? _shiftStartTime;
  DateTime? get shiftStartTime => _shiftStartTime;
  set shiftStartTime(DateTime? val) => _shiftStartTime = val;

  bool hasShiftStartTime() => _shiftStartTime != null;

  // "shiftEndTime" field.
  DateTime? _shiftEndTime;
  DateTime? get shiftEndTime => _shiftEndTime;
  set shiftEndTime(DateTime? val) => _shiftEndTime = val;

  bool hasShiftEndTime() => _shiftEndTime != null;

  // "shiftDate" field.
  DateTime? _shiftDate;
  DateTime? get shiftDate => _shiftDate;
  set shiftDate(DateTime? val) => _shiftDate = val;

  bool hasShiftDate() => _shiftDate != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  set duration(int? val) => _duration = val;

  void incrementDuration(int amount) => duration = duration + amount;

  bool hasDuration() => _duration != null;

  // "overTime" field.
  int? _overTime;
  int get overTime => _overTime ?? 0;
  set overTime(int? val) => _overTime = val;

  void incrementOverTime(int amount) => overTime = overTime + amount;

  bool hasOverTime() => _overTime != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  set location(LatLng? val) => _location = val;

  bool hasLocation() => _location != null;

  static AttendanceNotesStruct fromMap(Map<String, dynamic> data) =>
      AttendanceNotesStruct(
        refStaff: data['refStaff'] as DocumentReference?,
        shiftStartTime: data['shiftStartTime'] as DateTime?,
        shiftEndTime: data['shiftEndTime'] as DateTime?,
        shiftDate: data['shiftDate'] as DateTime?,
        duration: castToType<int>(data['duration']),
        overTime: castToType<int>(data['overTime']),
        location: data['location'] as LatLng?,
      );

  static AttendanceNotesStruct? maybeFromMap(dynamic data) => data is Map
      ? AttendanceNotesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'refStaff': _refStaff,
        'shiftStartTime': _shiftStartTime,
        'shiftEndTime': _shiftEndTime,
        'shiftDate': _shiftDate,
        'duration': _duration,
        'overTime': _overTime,
        'location': _location,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'refStaff': serializeParam(
          _refStaff,
          ParamType.DocumentReference,
        ),
        'shiftStartTime': serializeParam(
          _shiftStartTime,
          ParamType.DateTime,
        ),
        'shiftEndTime': serializeParam(
          _shiftEndTime,
          ParamType.DateTime,
        ),
        'shiftDate': serializeParam(
          _shiftDate,
          ParamType.DateTime,
        ),
        'duration': serializeParam(
          _duration,
          ParamType.int,
        ),
        'overTime': serializeParam(
          _overTime,
          ParamType.int,
        ),
        'location': serializeParam(
          _location,
          ParamType.LatLng,
        ),
      }.withoutNulls;

  static AttendanceNotesStruct fromSerializableMap(Map<String, dynamic> data) =>
      AttendanceNotesStruct(
        refStaff: deserializeParam(
          data['refStaff'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Club', 'staffAccounts'],
        ),
        shiftStartTime: deserializeParam(
          data['shiftStartTime'],
          ParamType.DateTime,
          false,
        ),
        shiftEndTime: deserializeParam(
          data['shiftEndTime'],
          ParamType.DateTime,
          false,
        ),
        shiftDate: deserializeParam(
          data['shiftDate'],
          ParamType.DateTime,
          false,
        ),
        duration: deserializeParam(
          data['duration'],
          ParamType.int,
          false,
        ),
        overTime: deserializeParam(
          data['overTime'],
          ParamType.int,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.LatLng,
          false,
        ),
      );

  @override
  String toString() => 'AttendanceNotesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AttendanceNotesStruct &&
        refStaff == other.refStaff &&
        shiftStartTime == other.shiftStartTime &&
        shiftEndTime == other.shiftEndTime &&
        shiftDate == other.shiftDate &&
        duration == other.duration &&
        overTime == other.overTime &&
        location == other.location;
  }

  @override
  int get hashCode => const ListEquality().hash([
        refStaff,
        shiftStartTime,
        shiftEndTime,
        shiftDate,
        duration,
        overTime,
        location
      ]);
}

AttendanceNotesStruct createAttendanceNotesStruct({
  DocumentReference? refStaff,
  DateTime? shiftStartTime,
  DateTime? shiftEndTime,
  DateTime? shiftDate,
  int? duration,
  int? overTime,
  LatLng? location,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AttendanceNotesStruct(
      refStaff: refStaff,
      shiftStartTime: shiftStartTime,
      shiftEndTime: shiftEndTime,
      shiftDate: shiftDate,
      duration: duration,
      overTime: overTime,
      location: location,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AttendanceNotesStruct? updateAttendanceNotesStruct(
  AttendanceNotesStruct? attendanceNotes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    attendanceNotes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAttendanceNotesStructData(
  Map<String, dynamic> firestoreData,
  AttendanceNotesStruct? attendanceNotes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (attendanceNotes == null) {
    return;
  }
  if (attendanceNotes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && attendanceNotes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final attendanceNotesData =
      getAttendanceNotesFirestoreData(attendanceNotes, forFieldValue);
  final nestedData =
      attendanceNotesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = attendanceNotes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAttendanceNotesFirestoreData(
  AttendanceNotesStruct? attendanceNotes, [
  bool forFieldValue = false,
]) {
  if (attendanceNotes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(attendanceNotes.toMap());

  // Add any Firestore field values
  mapToFirestore(attendanceNotes.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAttendanceNotesListFirestoreData(
  List<AttendanceNotesStruct>? attendanceNotess,
) =>
    attendanceNotess
        ?.map((e) => getAttendanceNotesFirestoreData(e, true))
        .toList() ??
    [];
