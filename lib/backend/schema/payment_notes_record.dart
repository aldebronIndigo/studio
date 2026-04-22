import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentNotesRecord extends FirestoreRecord {
  PaymentNotesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "adminRef" field.
  DocumentReference? _adminRef;
  DocumentReference? get adminRef => _adminRef;
  bool hasAdminRef() => _adminRef != null;

  // "payeeRef" field.
  DocumentReference? _payeeRef;
  DocumentReference? get payeeRef => _payeeRef;
  bool hasPayeeRef() => _payeeRef != null;

  // "payeeName" field.
  String? _payeeName;
  String get payeeName => _payeeName ?? '';
  bool hasPayeeName() => _payeeName != null;

  // "paymentDate" field.
  DateTime? _paymentDate;
  DateTime? get paymentDate => _paymentDate;
  bool hasPaymentDate() => _paymentDate != null;

  // "datePayment" field.
  String? _datePayment;
  String get datePayment => _datePayment ?? '';
  bool hasDatePayment() => _datePayment != null;

  // "refCourse" field.
  DocumentReference? _refCourse;
  DocumentReference? get refCourse => _refCourse;
  bool hasRefCourse() => _refCourse != null;

  // "courseName" field.
  String? _courseName;
  String get courseName => _courseName ?? '';
  bool hasCourseName() => _courseName != null;

  // "refPass" field.
  DocumentReference? _refPass;
  DocumentReference? get refPass => _refPass;
  bool hasRefPass() => _refPass != null;

  // "passName" field.
  String? _passName;
  String get passName => _passName ?? '';
  bool hasPassName() => _passName != null;

  // "paymentMethod" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "paymentType" field.
  String? _paymentType;
  String get paymentType => _paymentType ?? '';
  bool hasPaymentType() => _paymentType != null;

  // "exchangeNominator" field.
  String? _exchangeNominator;
  String get exchangeNominator => _exchangeNominator ?? '';
  bool hasExchangeNominator() => _exchangeNominator != null;

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
    _adminRef = snapshotData['adminRef'] as DocumentReference?;
    _payeeRef = snapshotData['payeeRef'] as DocumentReference?;
    _payeeName = snapshotData['payeeName'] as String?;
    _paymentDate = snapshotData['paymentDate'] as DateTime?;
    _datePayment = snapshotData['datePayment'] as String?;
    _refCourse = snapshotData['refCourse'] as DocumentReference?;
    _courseName = snapshotData['courseName'] as String?;
    _refPass = snapshotData['refPass'] as DocumentReference?;
    _passName = snapshotData['passName'] as String?;
    _paymentMethod = snapshotData['paymentMethod'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _paymentType = snapshotData['paymentType'] as String?;
    _exchangeNominator = snapshotData['exchangeNominator'] as String?;
    _coins = castToType<int>(snapshotData['coins']);
    _points = castToType<int>(snapshotData['points']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('paymentNotes')
          : FirebaseFirestore.instance.collectionGroup('paymentNotes');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('paymentNotes').doc(id);

  static Stream<PaymentNotesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentNotesRecord.fromSnapshot(s));

  static Future<PaymentNotesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentNotesRecord.fromSnapshot(s));

  static PaymentNotesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentNotesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentNotesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentNotesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentNotesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentNotesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentNotesRecordData({
  DocumentReference? adminRef,
  DocumentReference? payeeRef,
  String? payeeName,
  DateTime? paymentDate,
  String? datePayment,
  DocumentReference? refCourse,
  String? courseName,
  DocumentReference? refPass,
  String? passName,
  String? paymentMethod,
  double? amount,
  String? paymentType,
  String? exchangeNominator,
  int? coins,
  int? points,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'adminRef': adminRef,
      'payeeRef': payeeRef,
      'payeeName': payeeName,
      'paymentDate': paymentDate,
      'datePayment': datePayment,
      'refCourse': refCourse,
      'courseName': courseName,
      'refPass': refPass,
      'passName': passName,
      'paymentMethod': paymentMethod,
      'amount': amount,
      'paymentType': paymentType,
      'exchangeNominator': exchangeNominator,
      'coins': coins,
      'points': points,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentNotesRecordDocumentEquality
    implements Equality<PaymentNotesRecord> {
  const PaymentNotesRecordDocumentEquality();

  @override
  bool equals(PaymentNotesRecord? e1, PaymentNotesRecord? e2) {
    return e1?.adminRef == e2?.adminRef &&
        e1?.payeeRef == e2?.payeeRef &&
        e1?.payeeName == e2?.payeeName &&
        e1?.paymentDate == e2?.paymentDate &&
        e1?.datePayment == e2?.datePayment &&
        e1?.refCourse == e2?.refCourse &&
        e1?.courseName == e2?.courseName &&
        e1?.refPass == e2?.refPass &&
        e1?.passName == e2?.passName &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.amount == e2?.amount &&
        e1?.paymentType == e2?.paymentType &&
        e1?.exchangeNominator == e2?.exchangeNominator &&
        e1?.coins == e2?.coins &&
        e1?.points == e2?.points;
  }

  @override
  int hash(PaymentNotesRecord? e) => const ListEquality().hash([
        e?.adminRef,
        e?.payeeRef,
        e?.payeeName,
        e?.paymentDate,
        e?.datePayment,
        e?.refCourse,
        e?.courseName,
        e?.refPass,
        e?.passName,
        e?.paymentMethod,
        e?.amount,
        e?.paymentType,
        e?.exchangeNominator,
        e?.coins,
        e?.points
      ]);

  @override
  bool isValidKey(Object? o) => o is PaymentNotesRecord;
}
