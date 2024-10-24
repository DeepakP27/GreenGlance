// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CompletionTokensDetailsStruct extends FFFirebaseStruct {
  CompletionTokensDetailsStruct({
    int? reasoningTokens,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _reasoningTokens = reasoningTokens,
        super(firestoreUtilData);

  // "reasoning_tokens" field.
  int? _reasoningTokens;
  int get reasoningTokens => _reasoningTokens ?? 0;
  set reasoningTokens(int? val) => _reasoningTokens = val;

  void incrementReasoningTokens(int amount) =>
      reasoningTokens = reasoningTokens + amount;

  bool hasReasoningTokens() => _reasoningTokens != null;

  static CompletionTokensDetailsStruct fromMap(Map<String, dynamic> data) =>
      CompletionTokensDetailsStruct(
        reasoningTokens: castToType<int>(data['reasoning_tokens']),
      );

  static CompletionTokensDetailsStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? CompletionTokensDetailsStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'reasoning_tokens': _reasoningTokens,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'reasoning_tokens': serializeParam(
          _reasoningTokens,
          ParamType.int,
        ),
      }.withoutNulls;

  static CompletionTokensDetailsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CompletionTokensDetailsStruct(
        reasoningTokens: deserializeParam(
          data['reasoning_tokens'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CompletionTokensDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CompletionTokensDetailsStruct &&
        reasoningTokens == other.reasoningTokens;
  }

  @override
  int get hashCode => const ListEquality().hash([reasoningTokens]);
}

CompletionTokensDetailsStruct createCompletionTokensDetailsStruct({
  int? reasoningTokens,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CompletionTokensDetailsStruct(
      reasoningTokens: reasoningTokens,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CompletionTokensDetailsStruct? updateCompletionTokensDetailsStruct(
  CompletionTokensDetailsStruct? completionTokensDetails, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    completionTokensDetails
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCompletionTokensDetailsStructData(
  Map<String, dynamic> firestoreData,
  CompletionTokensDetailsStruct? completionTokensDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (completionTokensDetails == null) {
    return;
  }
  if (completionTokensDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      completionTokensDetails.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final completionTokensDetailsData = getCompletionTokensDetailsFirestoreData(
      completionTokensDetails, forFieldValue);
  final nestedData =
      completionTokensDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      completionTokensDetails.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCompletionTokensDetailsFirestoreData(
  CompletionTokensDetailsStruct? completionTokensDetails, [
  bool forFieldValue = false,
]) {
  if (completionTokensDetails == null) {
    return {};
  }
  final firestoreData = mapToFirestore(completionTokensDetails.toMap());

  // Add any Firestore field values
  completionTokensDetails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCompletionTokensDetailsListFirestoreData(
  List<CompletionTokensDetailsStruct>? completionTokensDetailss,
) =>
    completionTokensDetailss
        ?.map((e) => getCompletionTokensDetailsFirestoreData(e, true))
        .toList() ??
    [];
