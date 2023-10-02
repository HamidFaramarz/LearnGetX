import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      locale: Locale('fa'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "مثال پوست",
            style: TextStyle(fontFamily: "Shabnam"),
          ),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.snackbar("Testing", "It is just Testing Snakbar");
                },
                child: Text("Show Snakbar Getx"))
          ],
        ));
  }
}
