import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _uploadedImagePath =
          prefs.getString('ff_uploadedImagePath') ?? _uploadedImagePath;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_countScan')) {
        try {
          final serializedData = prefs.getString('ff_countScan') ?? '{}';
          _countScan =
              CountersStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _uploadedImagePath = '';
  String get uploadedImagePath => _uploadedImagePath;
  set uploadedImagePath(String value) {
    _uploadedImagePath = value;
    prefs.setString('ff_uploadedImagePath', value);
  }

  CountersStruct _countScan = CountersStruct();
  CountersStruct get countScan => _countScan;
  set countScan(CountersStruct value) {
    _countScan = value;
    prefs.setString('ff_countScan', value.serialize());
  }

  void updateCountScanStruct(Function(CountersStruct) updateFn) {
    updateFn(_countScan);
    prefs.setString('ff_countScan', _countScan.serialize());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
