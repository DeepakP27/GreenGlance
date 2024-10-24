import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI API Group Code

class OpenAIAPIGroup {
  static String getBaseUrl({
    String? apiKey =
        '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',
  }) =>
      'https://api.openai.com/v1';
  static Map<String, String> headers = {};
  static CreateChatCompletionCall createChatCompletionCall =
      CreateChatCompletionCall();
  static CreateChatCompletionTwoCall createChatCompletionTwoCall =
      CreateChatCompletionTwoCall();
}

class CreateChatCompletionCall {
  Future<ApiCallResponse> call({
    String? query = '',
    String? apiKey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apiKey: apiKey,
    );

    final ffApiRequestBody = '''
{
  "model": "gpt-4o-mini",
  "messages": [
    {
      "role": "system",
      "content": "You are a helpful assistant. Using the location the user provides, provide the closest recycling centers, with an approximation on distance in terms of miles. Provide the three closest, and output each in a format like this example. Example : 'Address: 1000 Avenel Street (Avenel), 3.4 milles'"
    },
    {
      "role": "user",
      "content": "$query"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createChatCompletion',
      apiUrl: '$baseUrl/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateChatCompletionTwoCall {
  Future<ApiCallResponse> call({
    String? query = '',
    String? imagePath = '',
    String? apiKey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apiKey: apiKey,
    );

    final ffApiRequestBody = '''
{
  "model": "gpt-4o-mini",
  "messages": [
    {
      "role": "user",
      "content": [
        {
          "type": "text",
          "text": "$query"
        },
        {
          "type": "image_url",
          "image_url": {
            "url": "$imagePath"
          }
        }
      ]
    }
  ],
  "max_tokens": 300
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createChatCompletionTwo',
      apiUrl: '$baseUrl/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? notRecycledResponse(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

/// End OpenAI API Group Code

/// Start OpenAI APITwo Group Code

class OpenAIAPITwoGroup {
  static String getBaseUrl({
    String? apiKey =
        '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',
  }) =>
      'https://api.openai.com/v1';
  static Map<String, String> headers = {};
  static CreateChatCompletionTooCall createChatCompletionTooCall =
      CreateChatCompletionTooCall();
}

class CreateChatCompletionTooCall {
  Future<ApiCallResponse> call({
    String? query = '',
    String? imagePath = '',
    String? apiKey =
        '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',
  }) async {
    final baseUrl = OpenAIAPITwoGroup.getBaseUrl(
      apiKey: apiKey,
    );

    final ffApiRequestBody = '''
{
  "model": "gpt-4o-mini",
  "messages": [
    {
      "role": "user",
      "content": [
        {
          "type": "text",
          "text": "$query"
        },
        {
          "type": "image_url",
          "image_url": {
            "url": "$imagePath"
          }
        }
      ]
    }
  ],
  "max_tokens": 300
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createChatCompletionToo',
      apiUrl: '$baseUrl/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End OpenAI APITwo Group Code

/// Start OpenAI APIThree Group Code

class OpenAIAPIThreeGroup {
  static String getBaseUrl({
    String? apiKey =
        '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',
  }) =>
      'https://api.openai.com/v1';
  static Map<String, String> headers = {};
  static CreateChatCompletionThreeCall createChatCompletionThreeCall =
      CreateChatCompletionThreeCall();
}

class CreateChatCompletionThreeCall {
  Future<ApiCallResponse> call({
    String? query = '',
    String? imagePath = '',
    String? apiKey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIThreeGroup.getBaseUrl(
      apiKey: apiKey,
    );

    final ffApiRequestBody = '''
{
  "model": "gpt-4o-mini",
  "messages": [
    {
      "role": "user",
      "content": [
        {
          "type": "text",
          "text": "$query"
        },
        {
          "type": "image_url",
          "image_url": {
            "url": "$imagePath"
          }
        }
      ]
    }
  ],
  "max_tokens": 300
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createChatCompletionThree',
      apiUrl: '$baseUrl/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End OpenAI APIThree Group Code

/// Start OpenAI API RecyclingLocations Group Code

class OpenAIAPIRecyclingLocationsGroup {
  static String getBaseUrl({
    String? apiKey =
        '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',
  }) =>
      'https://api.openai.com/v1';
  static Map<String, String> headers = {};
  static RecyclingNameOneCall recyclingNameOneCall = RecyclingNameOneCall();
  static RecyclingAddressCall recyclingAddressCall = RecyclingAddressCall();
  static RecyclingPhoneNumberCall recyclingPhoneNumberCall =
      RecyclingPhoneNumberCall();
  static RecyclingOpenTimeCall recyclingOpenTimeCall = RecyclingOpenTimeCall();
  static RecyclingDistanceCall recyclingDistanceCall = RecyclingDistanceCall();
  static RecyclingCombinedCall recyclingCombinedCall = RecyclingCombinedCall();
}

class RecyclingNameOneCall {
  Future<ApiCallResponse> call({
    String? location = '',
    String? number = '',
    String? apiKey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIRecyclingLocationsGroup.getBaseUrl(
      apiKey: apiKey,
    );

    final ffApiRequestBody = '''
{
  "model": "gpt-4o",
  "messages": [
    {
      "role": "system",
      "content": "You are a helpful assistant. Using the location provided by the user, simply output the name of the $number nearest recycling center. Example of an output, 'Avenel Recycling Center' "
    },
    {
      "role": "user",
      "content": "$location"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RecyclingNameOne',
      apiUrl: '$baseUrl/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RecyclingAddressCall {
  Future<ApiCallResponse> call({
    String? location = '',
    String? number = '',
    String? apiKey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIRecyclingLocationsGroup.getBaseUrl(
      apiKey: apiKey,
    );

    final ffApiRequestBody = '''
{
  "model": "gpt-4o",
  "messages": [
    {
      "role": "system",
      "content": "You are a helpful assistant. Using the name of the recycling center provided by the user, simply output the address of the recycling center. An example of an output would be, '123 Eco Street, Green City'"
    },
    {
      "role": "user",
      "content": "$location"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RecyclingAddress',
      apiUrl: '$baseUrl/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RecyclingPhoneNumberCall {
  Future<ApiCallResponse> call({
    String? location = '',
    String? number = '',
    String? apiKey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIRecyclingLocationsGroup.getBaseUrl(
      apiKey: apiKey,
    );

    final ffApiRequestBody = '''
{
  "model": "gpt-4o",
  "messages": [
    {
      "role": "system",
      "content": "You are a helpful assistant. Using the name of the recycling center provided by the user, simply output the phone number of the recycling center. An example of an output, '(555) 123-4567'"
    },
    {
      "role": "user",
      "content": "$location"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RecyclingPhoneNumber',
      apiUrl: '$baseUrl/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RecyclingOpenTimeCall {
  Future<ApiCallResponse> call({
    String? location = '',
    String? number = '',
    String? apiKey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIRecyclingLocationsGroup.getBaseUrl(
      apiKey: apiKey,
    );

    final ffApiRequestBody = '''
{
  "model": "gpt-4o",
  "messages": [
    {
      "role": "system",
      "content": "You are a helpful assistant. Using the name of the recycling center provided by the user, simply output the time open of the recycling center. Example of an output, 'Open: Mon-Sat 8AM-6PM' "
    },
    {
      "role": "user",
      "content": "$location"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RecyclingOpenTime',
      apiUrl: '$baseUrl/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RecyclingDistanceCall {
  Future<ApiCallResponse> call({
    String? location = '',
    String? number = '',
    String? userLocation = '',
    String? apiKey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIRecyclingLocationsGroup.getBaseUrl(
      apiKey: apiKey,
    );

    final ffApiRequestBody = '''
{
  "model": "gpt-4o",
  "messages": [
    {
      "role": "system",
      "content": "You are a helpful assistant. Using the name of the recycling center provided by the user, simply output the distance of the recycling center from the user's location. Example of an output, '3.6 miles (5.8 km)' "
    },
    {
      "role": "user",
      "content": "$location"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RecyclingDistance',
      apiUrl: '$baseUrl/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RecyclingCombinedCall {
  Future<ApiCallResponse> call({
    String? location = '',
    String? number = '',
    String? apiKey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIRecyclingLocationsGroup.getBaseUrl(
      apiKey: apiKey,
    );

    final ffApiRequestBody = '''
{
  "model": "gpt-4o",
  "messages": [
    {
      "role": "system",
      "content": "You are a helpful assistant. Using the user's location ($location), simply output the name, address, phone number, open-time, and distance, of the $number nearest recycling center to the user's location. Example of an output, 'Name: Woodbridge Township Recycling Center;  225 Smith St, Keasbey, NJ 08832; (732) 738-1311; Mon-Sat 8AM - 6PM; 3.6 miles (5.79 km)'. Print on seperate lines, and make sure they are seperated by a spaced line. "
    },
    {
      "role": "user",
      "content": "$location"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RecyclingCombined',
      apiUrl: '$baseUrl/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End OpenAI API RecyclingLocations Group Code

/// Start OpenAI API ChatBot Group Code

class OpenAIAPIChatBotGroup {
  static String getBaseUrl({
    String? apiKey =
        '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',
  }) =>
      'https://api.openai.com/v1';
  static Map<String, String> headers = {};
  static ChatBotCall chatBotCall = ChatBotCall();
}

class ChatBotCall {
  Future<ApiCallResponse> call({
    String? message = '',
    String? apiKey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIChatBotGroup.getBaseUrl(
      apiKey: apiKey,
    );

    final ffApiRequestBody = '''
{
  "model": "gpt-4o-mini",
  "messages": [
    {
      "role": "system",
      "content": "You are a helpful assistant. You answer questions relating to the environment, and safe eco-friendly choices ONLY. Keep your responses to maximum of 100 words. Don't bold or italicize."
    },
    {
      "role": "user",
      "content": "$message"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ChatBot',
      apiUrl: '$baseUrl/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End OpenAI API ChatBot Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
