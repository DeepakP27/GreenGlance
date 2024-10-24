// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CountersStruct extends FFFirebaseStruct {
  CountersStruct({
    int? counter,
    double? totalEmission1,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _counter = counter,
        _totalEmission1 = totalEmission1,
        super(firestoreUtilData);

  // "counter" field.
  int? _counter;
  int get counter => _counter ?? 0;
  set counter(int? val) => _counter = val;

  void incrementCounter(int amount) => counter = counter + amount;

  bool hasCounter() => _counter != null;

  // "totalEmission1" field.
  double? _totalEmission1;
  double get totalEmission1 => _totalEmission1 ?? 0.0;
  set totalEmission1(double? val) => _totalEmission1 = val;

  void incrementTotalEmission1(double amount) =>
      totalEmission1 = totalEmission1 + amount;

  bool hasTotalEmission1() => _totalEmission1 != null;

  static CountersStruct fromMap(Map<String, dynamic> data) => CountersStruct(
        counter: castToType<int>(data['counter']),
        totalEmission1: castToType<double>(data['totalEmission1']),
      );

  static CountersStruct? maybeFromMap(dynamic data) =>
      data is Map ? CountersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'counter': _counter,
        'totalEmission1': _totalEmission1,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'counter': serializeParam(
          _counter,
          ParamType.int,
        ),
        'totalEmission1': serializeParam(
          _totalEmission1,
          ParamType.double,
        ),
      }.withoutNulls;

  static CountersStruct fromSerializableMap(Map<String, dynamic> data) =>
      CountersStruct(
        counter: deserializeParam(
          data['counter'],
          ParamType.int,
          false,
        ),
        totalEmission1: deserializeParam(
          data['totalEmission1'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'CountersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CountersStruct &&
        counter == other.counter &&
        totalEmission1 == other.totalEmission1;
  }

  @override
  int get hashCode => const ListEquality().hash([counter, totalEmission1]);
}

CountersStruct createCountersStruct({
  int? counter,
  double? totalEmission1,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CountersStruct(
      counter: counter,
      totalEmission1: totalEmission1,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CountersStruct? updateCountersStruct(
  CountersStruct? counters, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    counters
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCountersStructData(
  Map<String, dynamic> firestoreData,
  CountersStruct? counters,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (counters == null) {
    return;
  }
  if (counters.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && counters.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final countersData = getCountersFirestoreData(counters, forFieldValue);
  final nestedData = countersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = counters.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCountersFirestoreData(
  CountersStruct? counters, [
  bool forFieldValue = false,
]) {
  if (counters == null) {
    return {};
  }
  final firestoreData = mapToFirestore(counters.toMap());

  // Add any Firestore field values
  counters.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCountersListFirestoreData(
  List<CountersStruct>? counterss,
) =>
    counterss?.map((e) => getCountersFirestoreData(e, true)).toList() ?? [];
