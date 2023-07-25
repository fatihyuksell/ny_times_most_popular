import 'package:flutter/material.dart';

import 'package:ny_times_most_popular/core/routes.dart';
import 'package:ny_times_most_popular/views/details/details_view.dart';

import '../views/home/home_view.dart';

Widget? createView(String route) {
  switch (route) {
    case Routes.home:
      return const HomeView();
    case Routes.detail:
      return const DetailsView();
    default:
      return null;
  }
}
