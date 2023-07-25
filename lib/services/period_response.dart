import 'package:equatable/equatable.dart';
import 'package:ny_times_most_popular/services/period_results_response.dart';

class PeriodResponse extends Equatable {
  final String status;
  final String copyright;
  final num numResults;
  final List<PeriodResultsResponse> results;

  const PeriodResponse({
    required this.status,
    required this.copyright,
    required this.numResults,
    required this.results,
  });

  PeriodResponse copyWith({
    String? status,
    String? copyright,
    num? numResults,
    List<PeriodResultsResponse>? results,
  }) {
    return PeriodResponse(
      status: status ?? this.status,
      copyright: copyright ?? this.copyright,
      numResults: numResults ?? this.numResults,
      results: results ?? this.results,
    );
  }

  factory PeriodResponse.fromJson(Map<String, dynamic> json) {
    return PeriodResponse(
      status: json['status'],
      copyright: json['copyright'],
      numResults: json['num_results'],
      results: List<PeriodResultsResponse>.from(
        json['results']?.map(
          (x) => PeriodResultsResponse.fromJson(x),
        ),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'copyright': copyright,
      'numresults': numResults,
      'results': results.map((x) => x.toJson()).toList(),
    };
  }

  @override
  String toString() =>
      '''PeriodResponse(status: $status, copyright: $copyright, numresults: $numResults, results: $results)''';

  @override
  List<Object> get props => [
        status,
        copyright,
        numResults,
        results,
      ];
}
