import 'package:equatable/equatable.dart';

import 'models/media_model.dart';

class PeriodResultsResponse extends Equatable {
  final String uri;
  final String url;
  final int id;
  final int assetId;
  final String source;
  final DateTime publishedDate;
  final DateTime updated;
  final String section;
  final String subsection;
  final String nytdsection;
  final String adxKeywords;
  final String byline;
  final String type;
  final String title;
  final String abstractValue;
  final List<String> desFacet;
  final List<String> orgFacet;
  final List<String> perFacet;
  final List<String> geoFacet;
  final List<Media> media;
  final int etaId;

  const PeriodResultsResponse({
    required this.uri,
    required this.url,
    required this.id,
    required this.assetId,
    required this.source,
    required this.publishedDate,
    required this.updated,
    required this.section,
    required this.subsection,
    required this.nytdsection,
    required this.adxKeywords,
    required this.byline,
    required this.type,
    required this.title,
    required this.abstractValue,
    required this.desFacet,
    required this.orgFacet,
    required this.perFacet,
    required this.geoFacet,
    required this.media,
    required this.etaId,
  });

  factory PeriodResultsResponse.fromJson(Map<String, dynamic> json) {
    return PeriodResultsResponse(
      uri: json['uri'] ?? '',
      url: json['url'] ?? '',
      id: json['id'] ?? 0,
      assetId: json['asset_id'] ?? 0,
      source: json['source'] ?? '',
      publishedDate: DateTime.parse(json['published_date']),
      updated: DateTime.parse(json['updated']),
      section: json['section'] ?? '',
      subsection: json['subsection'] ?? '',
      nytdsection: json['nytdsection'] ?? '',
      adxKeywords: json['adx_keywords'] ?? '',
      byline: json['byline'] ?? '',
      type: json['type'] ?? '',
      title: json['title'] ?? '',
      abstractValue: json['abstract'] ?? '',
      desFacet: List<String>.from(json['des_facet'] ?? []),
      orgFacet: List<String>.from(json['org_facet'] ?? []),
      perFacet: List<String>.from(json['per_facet'] ?? []),
      geoFacet: List<String>.from(json['geo_facet'] ?? []),
      media: List<Media>.from(
        json['media']?.map((x) => Media.fromJson(x)) ?? [],
      ),
      etaId: json['eta_id'] ?? 0,
    );
  }

  PeriodResultsResponse copyWith({
    String? uri,
    String? url,
    int? id,
    int? assetId,
    String? source,
    DateTime? publishedDate,
    DateTime? updated,
    String? section,
    String? subsection,
    String? nytdsection,
    String? adxKeywords,
    String? byline,
    String? type,
    String? title,
    String? abstractValue,
    List<String>? desFacet,
    List<String>? orgFacet,
    List<String>? perFacet,
    List<String>? geoFacet,
    List<Media>? media,
    int? etaId,
  }) {
    return PeriodResultsResponse(
      uri: uri ?? this.uri,
      url: url ?? this.url,
      id: id ?? this.id,
      assetId: assetId ?? this.assetId,
      source: source ?? this.source,
      publishedDate: publishedDate ?? this.publishedDate,
      updated: updated ?? this.updated,
      section: section ?? this.section,
      subsection: subsection ?? this.subsection,
      nytdsection: nytdsection ?? this.nytdsection,
      adxKeywords: adxKeywords ?? this.adxKeywords,
      byline: byline ?? this.byline,
      type: type ?? this.type,
      title: title ?? this.title,
      abstractValue: abstractValue ?? this.abstractValue,
      desFacet: desFacet ?? this.desFacet,
      orgFacet: orgFacet ?? this.orgFacet,
      perFacet: perFacet ?? this.perFacet,
      geoFacet: geoFacet ?? this.geoFacet,
      media: media ?? this.media,
      etaId: etaId ?? this.etaId,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'url': url,
      'id': id,
      'asset_id': assetId,
      'source': source,
      'published_date': publishedDate.toIso8601String(),
      'updated': updated.toIso8601String(),
      'section': section,
      'subsection': subsection,
      'nytdsection': nytdsection,
      'adx_keywords': adxKeywords,
      'byline': byline,
      'type': type,
      'title': title,
      'abstract': abstractValue,
      'des_facet': desFacet,
      'org_facet': orgFacet,
      'per_facet': perFacet,
      'geo_facet': geoFacet,
      'media': media.map((x) => x.toJson()).toList(),
      'etaId': etaId,
    };
  }

  @override
  String toString() =>
      '''PeriodResultsResponse(uri: $uri, url: $url, id: $id, assetId: $assetId, source: $source, publishedDate: $publishedDate, updated: $updated, section: $section, subsection: $subsection, nytdsection: $nytdsection, adxKeywords: $adxKeywords , byline: $byline, type: $type, title: $title, abstract: $abstractValue, desFacet: $desFacet, orgFacet: $orgFacet, perFacet: $perFacet, geoFacet: $geoFacet, media: $media, etaId: $etaId)''';

  @override
  List<Object?> get props => [
        uri,
        url,
        id,
        assetId,
        source,
        publishedDate,
        updated,
        section,
        subsection,
        nytdsection,
        adxKeywords,
        byline,
        type,
        title,
        abstractValue,
        desFacet,
        orgFacet,
        perFacet,
        geoFacet,
        media,
        etaId,
      ];
}
