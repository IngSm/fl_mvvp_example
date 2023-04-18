import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mvvm_test/main.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  void handleEvent() {
    homeViewModel.fetchDayPic();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 6,
        shadowColor: Theme.of(context).shadowColor,
        title: const Text("Picture of the day"),
      ),
      body: Center(
        child: Observer(
          builder: (_) => homeViewModel.dayPic != null
              ? Image.network(homeViewModel.dayPic!.url)
              : const Text('No urls'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: handleEvent,
        tooltip: 'Increment',
        child: const Icon(Icons.image),
      ),
    );
  }
}
