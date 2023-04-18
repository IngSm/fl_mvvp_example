import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mvvm_test/keys.dart';
import 'package:mvvm_test/utils/api.dart';
import 'package:mvvm_test/view_models/view_models.dart';
import 'package:mvvm_test/views/home_view.dart';

const nasaApiKey = apiKey;
final logger = Logger();
final homeViewModel = HomeViewModel();
final apiService = ApiService();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
      home: const MyHomePage(),
    );
  }
}
