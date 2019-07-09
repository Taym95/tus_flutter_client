import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tus_flutter_client/tus_flutter_client.dart';

void main() {
  const MethodChannel channel = MethodChannel('tus_flutter_client');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await TusFlutterClient.platformVersion, '42');
  });
}
