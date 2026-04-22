import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PackagesRecord extends FirestoreRecord {
  PackagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdat" field.
  DateTime? _createdat;
  DateTime? get createdat => _createdat;
  bool hasCreatedat() => _createdat != null;

  // "createdbyRef" field.
  DocumentReference? _createdbyRef;
  DocumentReference? get createdbyRef => _createdbyRef;
  bool hasCreatedbyRef() => _createdbyRef != null;

  // "createdbyName" field.
  String? _createdbyName;
  String get createdbyName => _createdbyName ?? '';
  bool hasCreatedbyName() => _createdbyName != null;

  // "lastupdatedat" field.
  DateTime? _lastupdatedat;
  DateTime? get lastupdatedat => _lastupdatedat;
  bool hasLastupdatedat() => _lastupdatedat != null;

  // "stuidoRef" field.
  DocumentReference? _stuidoRef;
  DocumentReference? get stuidoRef => _stuidoRef;
  bool hasStuidoRef() => _stuidoRef != null;

  // "courseRef" field.
  DocumentReference? _courseRef;
  DocumentReference? get courseRef => _courseRef;
  bool hasCourseRef() => _courseRef != null;

  // "fullamount" field.
  double? _fullamount;
  double get fullamount => _fullamount ?? 0.0;
  bool hasFullamount() => _fullamount != null;

  // "paymentFrequency" field.
  String? _paymentFrequency;
  String get paymentFrequency => _paymentFrequency ?? '';
  bool hasPaymentFrequency() => _paymentFrequency != null;

  // "emiAmount" field.
  double? _emiAmount;
  double get emiAmount => _emiAmount ?? 0.0;
  bool hasEmiAmount() => _emiAmount != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  bool hasDiscount() => _discount != null;

  // "finalPayable" field.
  double? _finalPayable;
  double get finalPayable => _finalPayable ?? 0.0;
  bool hasFinalPayable() => _finalPayable != null;

  // "registrationFee" field.
  double? _registrationFee;
  double get registrationFee => _registrationFee ?? 0.0;
  bool hasRegistrationFee() => _registrationFee != null;

  // "firstEmi" field.
  double? _firstEmi;
  double get firstEmi => _firstEmi ?? 0.0;
  bool hasFirstEmi() => _firstEmi != null;

  // "totalnumberEmi" field.
  int? _totalnumberEmi;
  int get totalnumberEmi => _totalnumberEmi ?? 0;
  bool hasTotalnumberEmi() => _totalnumberEmi != null;

  // "PassAttachched" field.
  List<DocumentReference>? _passAttachched;
  List<DocumentReference> get passAttachched => _passAttachched ?? const [];
  bool hasPassAttachched() => _passAttachched != null;

  // "taxable" field.
  bool? _taxable;
  bool get taxable => _taxable ?? false;
  bool hasTaxable() => _taxable != null;

  // "existingMemberOff" field.
  bool? _existingMemberOff;
  bool get existingMemberOff => _existingMemberOff ?? false;
  bool hasExistingMemberOff() => _existingMemberOff != null;

  // "taxRate" field.
  double? _taxRate;
  double get taxRate => _taxRate ?? 0.0;
  bool hasTaxRate() => _taxRate != null;

  // "taxAmount" field.
  double? _taxAmount;
  double get taxAmount => _taxAmount ?? 0.0;
  bool hasTaxAmount() => _taxAmount != null;

  // "planName" field.
  String? _planName;
  String get planName => _planName ?? '';
  bool hasPlanName() => _planName != null;

  // "planCategory" field.
  String? _planCategory;
  String get planCategory => _planCategory ?? '';
  bool hasPlanCategory() => _planCategory != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdat = snapshotData['createdat'] as DateTime?;
    _createdbyRef = snapshotData['createdbyRef'] as DocumentReference?;
    _createdbyName = snapshotData['createdbyName'] as String?;
    _lastupdatedat = snapshotData['lastupdatedat'] as DateTime?;
    _stuidoRef = snapshotData['stuidoRef'] as DocumentReference?;
    _courseRef = snapshotData['courseRef'] as DocumentReference?;
    _fullamount = castToType<double>(snapshotData['fullamount']);
    _paymentFrequency = snapshotData['paymentFrequency'] as String?;
    _emiAmount = castToType<double>(snapshotData['emiAmount']);
    _discount = castToType<double>(snapshotData['discount']);
    _finalPayable = castToType<double>(snapshotData['finalPayable']);
    _registrationFee = castToType<double>(snapshotData['registrationFee']);
    _firstEmi = castToType<double>(snapshotData['firstEmi']);
    _totalnumberEmi = castToType<int>(snapshotData['totalnumberEmi']);
    _passAttachched = getDataList(snapshotData['PassAttachched']);
    _taxable = snapshotData['taxable'] as bool?;
    _existingMemberOff = snapshotData['existingMemberOff'] as bool?;
    _taxRate = castToType<double>(snapshotData['taxRate']);
    _taxAmount = castToType<double>(snapshotData['taxAmount']);
    _planName = snapshotData['planName'] as String?;
    _planCategory = snapshotData['planCategory'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('packages')
          : FirebaseFirestore.instance.collectionGroup('packages');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('packages').doc(id);

  static Stream<PackagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PackagesRecord.fromSnapshot(s));

  static Future<PackagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PackagesRecord.fromSnapshot(s));

  static PackagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PackagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PackagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PackagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PackagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PackagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPackagesRecordData({
  DateTime? createdat,
  DocumentReference? createdbyRef,
  String? createdbyName,
  DateTime? lastupdatedat,
  DocumentReference? stuidoRef,
  DocumentReference? courseRef,
  double? fullamount,
  String? paymentFrequency,
  double? emiAmount,
  double? discount,
  double? finalPayable,
  double? registrationFee,
  double? firstEmi,
  int? totalnumberEmi,
  bool? taxable,
  bool? existingMemberOff,
  double? taxRate,
  double? taxAmount,
  String? planName,
  String? planCategory,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdat': createdat,
      'createdbyRef': createdbyRef,
      'createdbyName': createdbyName,
      'lastupdatedat': lastupdatedat,
      'stuidoRef': stuidoRef,
      'courseRef': courseRef,
      'fullamount': fullamount,
      'paymentFrequency': paymentFrequency,
      'emiAmount': emiAmount,
      'discount': discount,
      'finalPayable': finalPayable,
      'registrationFee': registrationFee,
      'firstEmi': firstEmi,
      'totalnumberEmi': totalnumberEmi,
      'taxable': taxable,
      'existingMemberOff': existingMemberOff,
      'taxRate': taxRate,
      'taxAmount': taxAmount,
      'planName': planName,
      'planCategory': planCategory,
    }.withoutNulls,
  );

  return firestoreData;
}

class PackagesRecordDocumentEquality implements Equality<PackagesRecord> {
  const PackagesRecordDocumentEquality();

  @override
  bool equals(PackagesRecord? e1, PackagesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdat == e2?.createdat &&
        e1?.createdbyRef == e2?.createdbyRef &&
        e1?.createdbyName == e2?.createdbyName &&
        e1?.lastupdatedat == e2?.lastupdatedat &&
        e1?.stuidoRef == e2?.stuidoRef &&
        e1?.courseRef == e2?.courseRef &&
        e1?.fullamount == e2?.fullamount &&
        e1?.paymentFrequency == e2?.paymentFrequency &&
        e1?.emiAmount == e2?.emiAmount &&
        e1?.discount == e2?.discount &&
        e1?.finalPayable == e2?.finalPayable &&
        e1?.registrationFee == e2?.registrationFee &&
        e1?.firstEmi == e2?.firstEmi &&
        e1?.totalnumberEmi == e2?.totalnumberEmi &&
        listEquality.equals(e1?.passAttachched, e2?.passAttachched) &&
        e1?.taxable == e2?.taxable &&
        e1?.existingMemberOff == e2?.existingMemberOff &&
        e1?.taxRate == e2?.taxRate &&
        e1?.taxAmount == e2?.taxAmount &&
        e1?.planName == e2?.planName &&
        e1?.planCategory == e2?.planCategory;
  }

  @override
  int hash(PackagesRecord? e) => const ListEquality().hash([
        e?.createdat,
        e?.createdbyRef,
        e?.createdbyName,
        e?.lastupdatedat,
        e?.stuidoRef,
        e?.courseRef,
        e?.fullamount,
        e?.paymentFrequency,
        e?.emiAmount,
        e?.discount,
        e?.finalPayable,
        e?.registrationFee,
        e?.firstEmi,
        e?.totalnumberEmi,
        e?.passAttachched,
        e?.taxable,
        e?.existingMemberOff,
        e?.taxRate,
        e?.taxAmount,
        e?.planName,
        e?.planCategory
      ]);

  @override
  bool isValidKey(Object? o) => o is PackagesRecord;
}
