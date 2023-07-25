import 'package:flutter/material.dart';
import 'package:ny_times_most_popular/core/view_model_builder.dart';
import '../../components/widgets/home_app_bar.dart';
import '../../components/widgets/home_list_widget.dart';
import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>(
      initViewModel: () => HomeViewModel(),
      builder: (context, viewModel) => Scaffold(
        appBar: const MyAppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (viewModel.mainResponse != null && !viewModel.isBusy)
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: viewModel.mainResponse!.results.length,
                    itemBuilder: (context, index) {
                      final resultsItem = viewModel.periodResult[index];
                      return HomeListWidget(
                        description: resultsItem.abstractValue,
                        iconData: Icons.abc,
                        title: resultsItem.title,
                        onPressed: () => viewModel.navigateToItemDetails(
                          viewModel.periodResult[index],
                        ),
                      );
                    },
                  ),
                )
              else
                const Center(
                  child: Text('Yukleniyor'),
                )
            ],
          ),
        ),
      ),
    );
  }
}
