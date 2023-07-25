import 'package:flutter/material.dart';
import 'package:ny_times_most_popular/core/generate_route.dart';
import 'package:ny_times_most_popular/services/api_service.dart';
import 'package:ny_times_most_popular/services/dio_client.dart';
import 'package:lottie/lottie.dart';
import 'package:ny_times_most_popular/utils/context_extension.dart';

import 'core/routes.dart';

void main() {
  DioClient.instance.init();
  runApp(const MyApp());
}

final _apiService = APIService(DioClient.instance.client);
APIService get apiService => _apiService;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      title: 'Sample Project for Case of ITEMCO',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: onGenerateRoute,
      home: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Scaffold(
              body: Center(
                child: LottieBuilder.asset(
                  context.isIOS
                      ? 'assets/lottie/ios_animation.json'
                      : 'assets/lottie/android_animation.json',
                  height: 200,
                  width: 200,
                ),
              ),
            );
          } else {
            return const Navigator(
              onGenerateRoute: onGenerateRoute,
              initialRoute: Routes.home,
            );
          }
        },
      ),
    );
  }
}
