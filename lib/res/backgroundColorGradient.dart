import 'package:flutter/material.dart';

import 'colors.dart';

Decoration backgroundColorGradient() {
  return const BoxDecoration(
      gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    // stops: [
    //   0.1,
    //   0.8,
    //   0.1,
    // ],
    colors: [
      backgroundColor,
      Colors.white,
      backgroundColor,
    ],
  ));
}
