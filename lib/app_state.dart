import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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

  String _dayofweek = 'Monday';
  String get dayofweek => _dayofweek;
  set dayofweek(String _value) {
    _dayofweek = _value;
  }

  List<String> _courses = [
    'Math',
    'Physics',
    'Chemistry',
    'Digital Design',
    'Digital Design Lab',
    'English',
    'Engineering Graphics'
  ];
  List<String> get courses => _courses;
  set courses(List<String> _value) {
    _courses = _value;
  }

  void addToCourses(String _value) {
    _courses.add(_value);
  }

  void removeFromCourses(String _value) {
    _courses.remove(_value);
  }

  void removeAtIndexFromCourses(int _index) {
    _courses.removeAt(_index);
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
