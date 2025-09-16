import 'package:flutter/material.dart';
import 'package:proyek_flutter_pertama/layout4.dart';
import 'package:proyek_flutter_pertama/layout_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Aplikasi Flutter",
      debugShowCheckedModeBanner: false,
      home:Layout4()
    );
  }
}
