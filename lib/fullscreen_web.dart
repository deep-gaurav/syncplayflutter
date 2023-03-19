import 'dart:html';

import 'package:flutter/material.dart';

ValueNotifier<bool> isFullScreen = ValueNotifier(false);

makeFullScreen() {
  if (document.fullscreenElement == null) {
    isFullScreen.value = true;
    document.body!.requestFullscreen();
    window.screen?.orientation?.lock("landscape");
  } else {
    isFullScreen.value = false;
    document.exitFullscreen();
    window.screen?.orientation?.lock("any");
  }
}

bool isAndroid() {
  return false;
}
