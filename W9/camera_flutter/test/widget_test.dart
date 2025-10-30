// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:camera/camera.dart';
import 'package:camera_flutter/widget/takepicture_screen.dart';

void main() {
  testWidgets('Camera app smoke test', (WidgetTester tester) async {
    // Create a mock camera for testing
    final camera = CameraDescription(
      name: 'mock',
      lensDirection: CameraLensDirection.back,
      sensorOrientation: 0,
    );

    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(home: TakePictureScreen(camera: camera)),
    );

    // Verify that the camera screen is showing
    expect(find.byType(TakePictureScreen), findsOneWidget);
  });
}
