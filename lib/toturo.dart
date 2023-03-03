import 'package:flutter/material.dart';
import 'package:toturo/src/presentation/features/initial/splash_page.dart';

class ToturoApp extends StatelessWidget {
  const ToturoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toturu',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: const SplashPage(),
    );
  }
}
