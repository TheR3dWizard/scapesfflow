import 'dart:convert';
import 'dart:math' as math;
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';

int? noofclasses() {
  return 8;
}

String? dailyTimetable(
  DateTimeRange? time,
  String? day,
) {
  return 'Course Code';
}

String? uUIDList() {
  return "some stuff";
}

Future<String>? uUIDScan() async {
  final flutterReactiveBle = FlutterReactiveBle();
  final devicesList = <String>{};
  String str = "";

  final subscription = flutterReactiveBle.scanForDevices(
    withServices: [],
    scanMode: ScanMode.lowPower,
    requireLocationServicesEnabled: false,
  ).listen((scanResult) {
    devicesList.add(scanResult.id.toString());
  });

  // Wait for 4 seconds
  await Future.delayed(Duration(seconds: 4));

  // Cancel the subscription to stop scanning for devices
  await subscription.cancel();

  // Print the list of scanned devices
  devicesList.forEach((device) => str = str + device + '\n');
  return str;
}
