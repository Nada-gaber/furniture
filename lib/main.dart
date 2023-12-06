import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture/pages/home/home_page.dart';
import 'package:furniture/pages/onboarding/onboard.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isviewed;

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isviewed = prefs.getInt('onBoard');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: isviewed != 0 ? const OnBoard() : const HomePage(),
    );
  }
}
