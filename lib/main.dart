import 'package:flutter/material.dart';
import './screens/charges_screen.dart';
import './constants/custom_colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        secondaryHeaderColor: CustomColors.secondaryHeaderColor,
      ),
      home: ChargesScreen(),
    );
  }
}

