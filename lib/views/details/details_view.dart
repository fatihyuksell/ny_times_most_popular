import 'package:flutter/material.dart';
import 'package:ny_times_most_popular/core/view_model_builder.dart';
import 'package:ny_times_most_popular/views/details/details_view_model.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailsViewModel>(
      initViewModel: () => DetailsViewModel(),
      builder: (context, viewModel) => Scaffold(
        appBar: AppBar(
          title: const Text('title'),
        ),
        body: const Center(
          child: Text('abstract'),
        ),
      ),
    );
  }
}
