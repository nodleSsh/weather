import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:weather/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.msk).existsSync(), isTrue);
    expect(File(AppImages.russia).existsSync(), isTrue);
  });
}
