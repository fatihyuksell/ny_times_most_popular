import 'dart:math';

import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  TargetPlatform get _platform => Theme.of(this).platform;
  bool get isAndroid => _platform == TargetPlatform.android;
  bool get isIOS => _platform == TargetPlatform.iOS;
}

extension MediaQueryExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get width => mediaQuery.size.width;
  double get height => mediaQuery.size.height;

  double get defaultBorderRadius => 16;
  double get _defaultGap => 16;
  double get allGap => _defaultGap;
  //Gap - vertical
  double get vGap => _defaultGap;
  //Gap - horizontal
  double get hGap => _defaultGap;
  double get bottomGap => mediaQuery.padding.bottom;
  double get keyboardGap => mediaQuery.viewInsets.bottom;

  double get _topGap => mediaQuery.padding.top;
  double get _bottomGap => mediaQuery.padding.bottom;

  double get safeTopGap => max(_topGap, vGap);
  double get safeBottomGap => max(_bottomGap, vGap);
}
