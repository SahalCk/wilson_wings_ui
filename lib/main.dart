import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wilson_wings_ui/views/screens/screen_home.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screentype) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Winson Ui App',
          theme: ThemeData(fontFamily: 'NatoSans'),
          home: const HomeScreen(),
        );
      },
    );
  }
}
