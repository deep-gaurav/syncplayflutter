import 'dart:html';

import 'package:flutter/material.dart';

ValueNotifier<bool> isFullScreen = ValueNotifier(false);

makeFullScreen() {
  if (document.fullscreenElement == null) {
    isFullScreen.value = true;
    document.body!.requestFullscreen();
  } else {
    isFullScreen.value = false;
    document.exitFullscreen();
  }
}
