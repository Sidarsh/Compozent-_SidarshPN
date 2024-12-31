import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormValidation(),
      debugShowCheckedModeBanner: false,
    );
  }
}
