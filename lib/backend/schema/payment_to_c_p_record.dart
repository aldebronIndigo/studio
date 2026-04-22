import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentToCPRecord extends FirestoreRecord {
  PaymentToCPRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "paymentMode" field.
  String? _paymentMode;
  String get paymentMode => _paymentMode ?? '';
  bool hasPaymentMode() => _paymentMode != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "method" field.
  String? _method;
  String get method => _method ?? '';
  bool hasMethod() => _method != null;

  // "coins" field.
  int? _coins;
  int get coins => _coins ?? 0;
  bool hasCoins() => _coins != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  bool hasPoints() => _points != null;

  // "paidTo" field.
  DocumentReference? _paidTo;
  DocumentReference? get paidTo => _paidTo;
  bool hasPaidTo() => _paidTo != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _paymentMode = snapshotData['paymentMode'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _method = snapshotData['method'] as String?;
    _coins = castToType<int>(snapshotData['coins']);
    _points = castToType<int>(snapshotData['points']);
    _paidTo = snapshotData['paidTo'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('paymentToCP')
          : FirebaseFirestore.instance.collectionGroup('paymentToCP');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('paymentToCP').doc(id);

  static Stream<PaymentToCPRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentToCPRecord.fromSnapshot(s));

  static Future<PaymentToCPRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentToCPRecord.fromSnapshot(s));

  static PaymentToCPRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentToCPRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentToCPRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentToCPRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentToCPRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentToCPRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentToCPRecordData({
  DateTime? createdAt,
  String? paymentMode,
  double? amount,
  String? method,
  int? coins,
  int? points,
  DocumentReference? paidTo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdAt': createdAt,
      'paymentMode': paymentMode,
      'amount': amount,
      'method': method,
      'coins': coins,
      'points': points,
      'paidTo': paidTo,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentToCPRecordDocumentEquality implements Equality<PaymentToCPRecord> {
  const PaymentToCPRecordDocumentEquality();

  @override
  bool equals(PaymentToCPRecord? e1, PaymentToCPRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.paymentMode == e2?.paymentMode &&
        e1?.amount == e2?.amount &&
        e1?.method == e2?.method &&
        e1?.coins == e2?.coins &&
        e1?.points == e2?.points &&
        e1?.paidTo == e2?.paidTo;
  }

  @override
  int hash(PaymentToCPRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.paymentMode,
        e?.amount,
        e?.method,
        e?.coins,
        e?.points,
        e?.paidTo
      ]);

  @override
  bool isValidKey(Object? o) => o is PaymentToCPRecord;
}
