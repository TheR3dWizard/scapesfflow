import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  dynamic _userdata = jsonDecode(
      '{\"username\":\"22z261@psgtech.ac.in\",\"password\":\"1234\"}');
  dynamic get userdata => _userdata;
  set userdata(dynamic _value) {
    _userdata = _value;
  }

  String _dayofweek = 'Monday';
  String get dayofweek => _dayofweek;
  set dayofweek(String _value) {
    _dayofweek = _value;
  }

  dynamic _timetable = jsonDecode(
      '{\"monday\":[\"19z213\",\"19z202\",\"19G001\",\"19z203\",\"19z211\",\"19z201\",\"19z205\",\"19z204\"],\"tuesday\":[\"19z205\",\"19z204\",\"19z202\",\"19G001\",\"19z213\",\"19z201\",\"19z203\",\"19z211\"],\"wednesday\":[\"19z204\",\"19G001\",\"19z203\",\"19z211\",\"19z202\",\"19z201\",\"19z213\",\"19z205\"],\"thursday\":[\"19z201\",\"19z211\",\"19z203\",\"19z213\",\"19z204\",\"19G001\",\"19z202\",\"19z205\"],\"friday\":[\"19z205\",\"19z213\",\"19z204\",\"19z201\",\"19z202\",\"19z211\",\"19z203\",\"19G001\"]}');
  dynamic get timetable => _timetable;
  set timetable(dynamic _value) {
    _timetable = _value;
  }

  String _clcode = '';
  String get clcode => _clcode;
  set clcode(String _value) {
    _clcode = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
