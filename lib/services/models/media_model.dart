import 'package:equatable/equatable.dart';

import 'media_meta_model.dart';

class Media extends Equatable {
  final String type;
  final String subtype;
  final String caption;
  final String copyright;
  final int approvedForSyndication;
  final List<MediaMetadata> mediaMetadata;

  const Media({
    required this.type,
    required this.subtype,
    required this.caption,
    required this.copyright,
    required this.approvedForSyndication,
    required this.mediaMetadata,
  });

  factory Media.fromJson(Map<String, dynamic> json) {
    return Media(
      type: json['type'],
      subtype: json['subtype'],
      caption: json['caption'],
      copyright: json['copyright'],
      approvedForSyndication: json['approved_for_syndication'],
      mediaMetadata: List<MediaMetadata>.from(
        json['media-metadata']?.map((x) => MediaMetadata.fromJson(x)) ?? [],
      ),
    );
  }

  Media copyWith({
    String? type,
    String? subtype,
    String? caption,
    String? copyright,
    int? approvedForSyndication,
    List<MediaMetadata>? mediaMetadata,
  }) {
    return Media(
      type: type ?? this.type,
      subtype: subtype ?? this.subtype,
      caption: caption ?? this.caption,
      copyright: copyright ?? this.copyright,
      approvedForSyndication:
          approvedForSyndication ?? this.approvedForSyndication,
      mediaMetadata: mediaMetadata ?? this.mediaMetadata,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'subtype': subtype,
      'caption': caption,
      'copyright': copyright,
      'approvedForSyndication': approvedForSyndication,
      'mediaMetadata': mediaMetadata,
    };
  }

  @override
  String toString() =>
      '''Media( type: $type, subtype: $subtype, caption: $caption, copyright: $copyright, approvedForSyndication: $approvedForSyndication, mediaMetadata: $mediaMetadata)''';

  @override
  List<Object?> get props => [
        type,
        subtype,
        caption,
        copyright,
        approvedForSyndication,
        mediaMetadata,
      ];
}
