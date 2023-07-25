mixin AppAssets {
  // Base Asset Paths
  static const String _baseSvgPath = 'assets/svg';
  static const String _baseImagePath = 'assets/images';
  static const String _baseLottiePath = 'assets/lottie';

  // SVG
  static const String profileIcon = '$_baseSvgPath/profile_icon.svg';

  // IMAGES
  static const String profileIconRounded =
      '$_baseImagePath/profile_icon_rounded.png';

  // LOTTIE
  static const String androidAnimation =
      '$_baseLottiePath/android_animation.json';
  static const String iosAnimation = '$_baseLottiePath/ios_animation.json';
  static const String loadingAnimation =
      '$_baseLottiePath/loading_animation.json';
}
