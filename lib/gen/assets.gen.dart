/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/blue_pen.png
  AssetGenImage get bluePen => const AssetGenImage('assets/icons/blue_pen.png');

  /// File path: assets/icons/hashtag.png
  AssetGenImage get hashtag => const AssetGenImage('assets/icons/hashtag.png');

  /// File path: assets/icons/home.png
  AssetGenImage get home => const AssetGenImage('assets/icons/home.png');

  /// File path: assets/icons/microphon.png
  AssetGenImage get microphon =>
      const AssetGenImage('assets/icons/microphon.png');

  /// File path: assets/icons/user.png
  AssetGenImage get user => const AssetGenImage('assets/icons/user.png');

  /// File path: assets/icons/write.png
  AssetGenImage get write => const AssetGenImage('assets/icons/write.png');
  
  /// File path: assets/icons/down_cat_arrow.png
  AssetGenImage get down_cat_arrow => const AssetGenImage('assets/icons/down_cat_arrow.png');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/a.png
  AssetGenImage get a => const AssetGenImage('assets/images/a.png');

  /// File path: assets/images/b.png
  AssetGenImage get b => const AssetGenImage('assets/images/b.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/profileAvatar.png
  AssetGenImage get profileAvatar =>
      const AssetGenImage('assets/images/profileAvatar.png');

  /// File path: assets/images/programming.png
  AssetGenImage get programming =>
      const AssetGenImage('assets/images/programming.png');

  /// File path: assets/images/tcbot.svg
  String get tcbot => 'assets/images/tcbot.svg';
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
