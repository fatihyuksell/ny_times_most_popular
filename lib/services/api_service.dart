import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ny_times_most_popular/services/period_response.dart';
import 'new_york_times_service.dart';

part 'api_service.g.dart';

//dart pub run build_runner build
//flutter pub run build_runner build
//dart run build_runner build --delete-conflicting-outputs

@RestApi()
abstract class APIService with NewYorkTimesService {
  factory APIService(Dio dio, {String baseUrl}) = _APIService;
}
