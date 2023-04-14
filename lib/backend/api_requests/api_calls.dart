import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Timetable Group Code

class TimetableGroup {
  static String baseUrl =
      'https://psg-scapes-backend.onrender.com/api/v1/c22z2/timetable';
  static Map<String, String> headers = {};
  static MondayCall mondayCall = MondayCall();
  static TuesdayCall tuesdayCall = TuesdayCall();
  static WednesdayCall wednesdayCall = WednesdayCall();
  static ThursdayCall thursdayCall = ThursdayCall();
  static FridayCall fridayCall = FridayCall();
}

class MondayCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Monday',
      apiUrl: '${TimetableGroup.baseUrl}/monday',
      callType: ApiCallType.GET,
      headers: {
        ...TimetableGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic firstclass(dynamic response) => getJsonField(
        response,
        r'''$[0].1.subject''',
        true,
      );
  dynamic secondclass(dynamic response) => getJsonField(
        response,
        r'''$[0].2.subject''',
      );
  dynamic thirdclass(dynamic response) => getJsonField(
        response,
        r'''$[0].3.subject''',
      );
}

class TuesdayCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Tuesday',
      apiUrl: '${TimetableGroup.baseUrl}/tuesday',
      callType: ApiCallType.GET,
      headers: {
        ...TimetableGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class WednesdayCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Wednesday',
      apiUrl: '${TimetableGroup.baseUrl}/wednesday',
      callType: ApiCallType.GET,
      headers: {
        ...TimetableGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ThursdayCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Thursday',
      apiUrl: '${TimetableGroup.baseUrl}/thursday',
      callType: ApiCallType.GET,
      headers: {
        ...TimetableGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class FridayCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Friday',
      apiUrl: '${TimetableGroup.baseUrl}/friday',
      callType: ApiCallType.GET,
      headers: {
        ...TimetableGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Timetable Group Code

/// Start UserData Group Code

class UserDataGroup {
  static String baseUrl =
      'https://psg-scapes-backend.onrender.com/api/students';
  static Map<String, String> headers = {};
}

/// End UserData Group Code

class TimetableapiCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'timetableapi',
      apiUrl: 'https://psg-scapes-backend.onrender.com/api/v1/c22z2/timetable',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic monday(dynamic response) => getJsonField(
        response,
        r'''$[0].monday[0]''',
        true,
      );
}

class UserInfoCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'UserInfo',
      apiUrl: 'https://psg-scapes-backend.onrender.com/api/students',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic rnum(dynamic response) => getJsonField(
        response,
        r'''$[:]._id''',
        true,
      );
  static dynamic pass(dynamic response) => getJsonField(
        response,
        r'''$[:].password''',
        true,
      );
}

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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
