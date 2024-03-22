import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoreFormBuilder {
  static TapRegionCallback defaultOnTapOutside() {
    return (event) {
      FocusManager.instance.primaryFocus?.unfocus();
    };
  }
}
