import 'package:flutter/material.dart';
import 'package:mvvm/main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ChangeNotifier")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Trocar tema do aplicativo"),
            ValueListenableBuilder(
              valueListenable: themeController,
              builder: (context, value, child) {
                return Switch(
                  value: value,
                  onChanged: (value) {
                    themeController.toggleTheme();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
