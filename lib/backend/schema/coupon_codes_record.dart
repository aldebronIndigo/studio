import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CouponCodesRecord extends FirestoreRecord {
  CouponCodesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "couponCode" field.
  String? _couponCode;
  String get couponCode => _couponCode ?? '';
  bool hasCouponCode() => _couponCode != null;

  // "createdat" field.
  DateTime? _createdat;
  DateTime? get createdat => _createdat;
  bool hasCreatedat() => _createdat != null;

  // "validity" field.
  String? _validity;
  String get validity => _validity ?? '';
  bool hasValidity() => _validity != null;

  // "amountValue" field.
  double? _amountValue;
  double get amountValue => _amountValue ?? 0.0;
  bool hasAmountValue() => _amountValue != null;

  // "packageStart" field.
  String? _packageStart;
  String get packageStart => _packageStart ?? '';
  bool hasPackageStart() => _packageStart != null;

  // "packageValue" field.
  double? _packageValue;
  double get packageValue => _packageValue ?? 0.0;
  bool hasPackageValue() => _packageValue != null;

  // "usedbyRef" field.
  List<DocumentReference>? _usedbyRef;
  List<DocumentReference> get usedbyRef => _usedbyRef ?? const [];
  bool hasUsedbyRef() => _usedbyRef != null;

  // "userData" field.
  List<StudioMembersStruct>? _userData;
  List<StudioMembersStruct> get userData => _userData ?? const [];
  bool hasUserData() => _userData != null;

  void _initializeFields() {
    _couponCode = snapshotData['couponCode'] as String?;
    _createdat = snapshotData['createdat'] as DateTime?;
    _validity = snapshotData['validity'] as String?;
    _amountValue = castToType<double>(snapshotData['amountValue']);
    _packageStart = snapshotData['packageStart'] as String?;
    _packageValue = castToType<double>(snapshotData['packageValue']);
    _usedbyRef = getDataList(snapshotData['usedbyRef']);
    _userData = getStructList(
      snapshotData['userData'],
      StudioMembersStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('couponCodes');

  static Stream<CouponCodesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CouponCodesRecord.fromSnapshot(s));

  static Future<CouponCodesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CouponCodesRecord.fromSnapshot(s));

  static CouponCodesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CouponCodesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CouponCodesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CouponCodesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CouponCodesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CouponCodesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCouponCodesRecordData({
  String? couponCode,
  DateTime? createdat,
  String? validity,
  double? amountValue,
  String? packageStart,
  double? packageValue,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'couponCode': couponCode,
      'createdat': createdat,
      'validity': validity,
      'amountValue': amountValue,
      'packageStart': packageStart,
      'packageValue': packageValue,
    }.withoutNulls,
  );

  return firestoreData;
}

class CouponCodesRecordDocumentEquality implements Equality<CouponCodesRecord> {
  const CouponCodesRecordDocumentEquality();

  @override
  bool equals(CouponCodesRecord? e1, CouponCodesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.couponCode == e2?.couponCode &&
        e1?.createdat == e2?.createdat &&
        e1?.validity == e2?.validity &&
        e1?.amountValue == e2?.amountValue &&
        e1?.packageStart == e2?.packageStart &&
        e1?.packageValue == e2?.packageValue &&
        listEquality.equals(e1?.usedbyRef, e2?.usedbyRef) &&
        listEquality.equals(e1?.userData, e2?.userData);
  }

  @override
  int hash(CouponCodesRecord? e) => const ListEquality().hash([
        e?.couponCode,
        e?.createdat,
        e?.validity,
        e?.amountValue,
        e?.packageStart,
        e?.packageValue,
        e?.usedbyRef,
        e?.userData
      ]);

  @override
  bool isValidKey(Object? o) => o is CouponCodesRecord;
}
