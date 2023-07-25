import 'package:ny_times_most_popular/services/models/media_model.dart';

class DetailArgs {
  const DetailArgs({
    required this.uri,
    this.url,
    this.id,
    this.assetId,
    this.source,
    this.publishedDate,
    this.updated,
    this.section,
    this.subsection,
    this.nytdsection,
    this.adxKeywords,
    this.byline,
    this.type,
    this.title,
    this.abstractValue,
    this.desFacet,
    this.orgFacet,
    this.perFacet,
    this.geoFacet,
    this.media,
    this.etaId,
  });

  final String uri;
  final String? url;
  final int? id;
  final int? assetId;
  final String? source;
  final DateTime? publishedDate;
  final DateTime? updated;
  final String? section;
  final String? subsection;
  final String? nytdsection;
  final String? adxKeywords;
  final String? byline;
  final String? type;
  final String? title;
  final String? abstractValue;
  final List<String>? desFacet;
  final List<String>? orgFacet;
  final List<String>? perFacet;
  final List<String>? geoFacet;
  final List<Media>? media;
  final int? etaId;
}
