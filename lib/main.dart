import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'travel_app.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // set to false in release mode
      builder: (context) => const TravelApp(),
    ),
  );
}
