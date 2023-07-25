import 'dart:developer';

import 'package:ny_times_most_popular/core/base_view_model.dart';
import 'package:ny_times_most_popular/core/routes.dart';
import 'package:ny_times_most_popular/views/details/detail_args.dart';

import '../../main.dart';
import '../../services/period_response.dart';
import '../../services/period_results_response.dart';

class HomeViewModel extends BaseViewModel {
  final List<PeriodResultsResponse> periodResult = <PeriodResultsResponse>[];
  PeriodResponse? mainResponse;

  @override
  void onBindingCreated() {
    init();
    super.onBindingCreated();
  }

  void init() {
    getPeriods();
  }

  void getPeriods() {
    flow(
      () async {
        final periodsResponse = await apiService.getMostPopularPeriod(
          period: '1',
        );
        mainResponse = periodsResponse;
        periodResult.addAll(mainResponse!.results);
        inspect(mainResponse);
      },
    );
  }

  void navigateToItemDetails(PeriodResultsResponse itemDetails) {
    final args = mainResponse!.results.map(
      (e) => DetailArgs(
        uri: e.uri,
      ),
    );

    navigate(
      Routes.detail,
      args: args,
    );
  }
}
