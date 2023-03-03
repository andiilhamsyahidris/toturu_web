import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toturo/firebase_options.dart';
import 'package:toturo/src/presentation/states/course_provider.dart';
import 'package:toturo/toturo.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
      create: (_) => CourseProvider(),
      child: const ToturoApp(),
    ),
  );
}
