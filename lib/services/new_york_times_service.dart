import 'package:ny_times_most_popular/services/period_response.dart';
import 'package:retrofit/retrofit.dart';

mixin NewYorkTimesService {
  @GET('/{period}.json')
  Future<PeriodResponse> getMostPopularPeriod({
    @Path('period') required String period,
  });
}
