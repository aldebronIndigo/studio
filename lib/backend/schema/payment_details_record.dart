import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentDetailsRecord extends FirestoreRecord {
  PaymentDetailsRecord._(
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

  // "payee" field.
  DocumentReference? _payee;
  DocumentReference? get payee => _payee;
  bool hasPayee() => _payee != null;

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

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _paymentMode = snapshotData['paymentMode'] as String?;
    _payee = snapshotData['payee'] as DocumentReference?;
    _amount = castToType<double>(snapshotData['amount']);
    _method = snapshotData['method'] as String?;
    _coins = castToType<int>(snapshotData['coins']);
    _points = castToType<int>(snapshotData['points']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('paymentDetails')
          : FirebaseFirestore.instance.collectionGroup('paymentDetails');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('paymentDetails').doc(id);

  static Stream<PaymentDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentDetailsRecord.fromSnapshot(s));

  static Future<PaymentDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentDetailsRecord.fromSnapshot(s));

  static PaymentDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentDetailsRecordData({
  DateTime? createdAt,
  String? paymentMode,
  DocumentReference? payee,
  double? amount,
  String? method,
  int? coins,
  int? points,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdAt': createdAt,
      'paymentMode': paymentMode,
      'payee': payee,
      'amount': amount,
      'method': method,
      'coins': coins,
      'points': points,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentDetailsRecordDocumentEquality
    implements Equality<PaymentDetailsRecord> {
  const PaymentDetailsRecordDocumentEquality();

  @override
  bool equals(PaymentDetailsRecord? e1, PaymentDetailsRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.paymentMode == e2?.paymentMode &&
        e1?.payee == e2?.payee &&
        e1?.amount == e2?.amount &&
        e1?.method == e2?.method &&
        e1?.coins == e2?.coins &&
        e1?.points == e2?.points;
  }

  @override
  int hash(PaymentDetailsRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.paymentMode,
        e?.payee,
        e?.amount,
        e?.method,
        e?.coins,
        e?.points
      ]);

  @override
  bool isValidKey(Object? o) => o is PaymentDetailsRecord;
}
