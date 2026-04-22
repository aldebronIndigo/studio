import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TicketsRecord extends FirestoreRecord {
  TicketsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "refClub" field.
  DocumentReference? _refClub;
  DocumentReference? get refClub => _refClub;
  bool hasRefClub() => _refClub != null;

  // "refEvent" field.
  DocumentReference? _refEvent;
  DocumentReference? get refEvent => _refEvent;
  bool hasRefEvent() => _refEvent != null;

  // "ticketBuyer" field.
  DocumentReference? _ticketBuyer;
  DocumentReference? get ticketBuyer => _ticketBuyer;
  bool hasTicketBuyer() => _ticketBuyer != null;

  // "buyerName" field.
  String? _buyerName;
  String get buyerName => _buyerName ?? '';
  bool hasBuyerName() => _buyerName != null;

  // "buyerPic" field.
  String? _buyerPic;
  String get buyerPic => _buyerPic ?? '';
  bool hasBuyerPic() => _buyerPic != null;

  // "parking" field.
  String? _parking;
  String get parking => _parking ?? '';
  bool hasParking() => _parking != null;

  // "accompaniedPersons" field.
  int? _accompaniedPersons;
  int get accompaniedPersons => _accompaniedPersons ?? 0;
  bool hasAccompaniedPersons() => _accompaniedPersons != null;

  // "ticketType" field.
  String? _ticketType;
  String get ticketType => _ticketType ?? '';
  bool hasTicketType() => _ticketType != null;

  // "transferatble" field.
  bool? _transferatble;
  bool get transferatble => _transferatble ?? false;
  bool hasTransferatble() => _transferatble != null;

  // "paymentRef" field.
  DocumentReference? _paymentRef;
  DocumentReference? get paymentRef => _paymentRef;
  bool hasPaymentRef() => _paymentRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _refClub = snapshotData['refClub'] as DocumentReference?;
    _refEvent = snapshotData['refEvent'] as DocumentReference?;
    _ticketBuyer = snapshotData['ticketBuyer'] as DocumentReference?;
    _buyerName = snapshotData['buyerName'] as String?;
    _buyerPic = snapshotData['buyerPic'] as String?;
    _parking = snapshotData['parking'] as String?;
    _accompaniedPersons = castToType<int>(snapshotData['accompaniedPersons']);
    _ticketType = snapshotData['ticketType'] as String?;
    _transferatble = snapshotData['transferatble'] as bool?;
    _paymentRef = snapshotData['paymentRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('tickets')
          : FirebaseFirestore.instance.collectionGroup('tickets');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('tickets').doc(id);

  static Stream<TicketsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TicketsRecord.fromSnapshot(s));

  static Future<TicketsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TicketsRecord.fromSnapshot(s));

  static TicketsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TicketsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TicketsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TicketsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TicketsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TicketsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTicketsRecordData({
  DocumentReference? refClub,
  DocumentReference? refEvent,
  DocumentReference? ticketBuyer,
  String? buyerName,
  String? buyerPic,
  String? parking,
  int? accompaniedPersons,
  String? ticketType,
  bool? transferatble,
  DocumentReference? paymentRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'refClub': refClub,
      'refEvent': refEvent,
      'ticketBuyer': ticketBuyer,
      'buyerName': buyerName,
      'buyerPic': buyerPic,
      'parking': parking,
      'accompaniedPersons': accompaniedPersons,
      'ticketType': ticketType,
      'transferatble': transferatble,
      'paymentRef': paymentRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class TicketsRecordDocumentEquality implements Equality<TicketsRecord> {
  const TicketsRecordDocumentEquality();

  @override
  bool equals(TicketsRecord? e1, TicketsRecord? e2) {
    return e1?.refClub == e2?.refClub &&
        e1?.refEvent == e2?.refEvent &&
        e1?.ticketBuyer == e2?.ticketBuyer &&
        e1?.buyerName == e2?.buyerName &&
        e1?.buyerPic == e2?.buyerPic &&
        e1?.parking == e2?.parking &&
        e1?.accompaniedPersons == e2?.accompaniedPersons &&
        e1?.ticketType == e2?.ticketType &&
        e1?.transferatble == e2?.transferatble &&
        e1?.paymentRef == e2?.paymentRef;
  }

  @override
  int hash(TicketsRecord? e) => const ListEquality().hash([
        e?.refClub,
        e?.refEvent,
        e?.ticketBuyer,
        e?.buyerName,
        e?.buyerPic,
        e?.parking,
        e?.accompaniedPersons,
        e?.ticketType,
        e?.transferatble,
        e?.paymentRef
      ]);

  @override
  bool isValidKey(Object? o) => o is TicketsRecord;
}
