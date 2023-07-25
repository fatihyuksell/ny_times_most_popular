import 'package:ny_times_most_popular/core/base_view_model.dart';
import 'package:ny_times_most_popular/views/details/detail_args.dart';

class DetailsViewModel extends BaseViewModel<DetailArgs> {
  final Map<String, dynamic> result = {};
  String uri = '';

  @override
  void onBindingCreated() {
    // args.uri =;
    super.onBindingCreated();
  }
}
