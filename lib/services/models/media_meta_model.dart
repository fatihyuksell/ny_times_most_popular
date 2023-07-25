import 'package:equatable/equatable.dart';

class MediaMetadata extends Equatable {
  final String url;
  final String format;
  final int height;
  final int width;

  const MediaMetadata({
    required this.url,
    required this.format,
    required this.height,
    required this.width,
  });

  factory MediaMetadata.fromJson(Map<String, dynamic> json) {
    return MediaMetadata(
      url: json['url'],
      format: json['format'],
      height: json['height'],
      width: json['width'],
    );
  }

  MediaMetadata copyWith({
    String? url,
    String? format,
    int? height,
    int? width,
  }) {
    return MediaMetadata(
      url: url ?? this.url,
      format: format ?? this.format,
      height: height ?? this.height,
      width: width ?? this.width,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'format': format,
      'height': height,
      'width': width,
    };
  }

  @override
  String toString() =>
      '''MediaMetadata(url: $url, format, $format, height: $height, width: $width)''';

  @override
  List<Object?> get props => [
        url,
        format,
        height,
        width,
      ];
}
