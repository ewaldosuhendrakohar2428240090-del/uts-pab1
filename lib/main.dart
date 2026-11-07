import 'package:flutter/material.dart';
import 'package:uts_pab/screens/detail_screen.dart';
import 'package:uts_pab/data/kuliner_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UTS PAB",
      home: DetailScreen(modelKuliner: kulinerList[0]),
    );
  }
}
