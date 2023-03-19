import 'dart:io';

import 'package:flutter/material.dart';

ValueNotifier<bool> isFullScreen = ValueNotifier(false);
makeFullScreen() {}

bool isAndroid() {
  return Platform.isAndroid;
}
