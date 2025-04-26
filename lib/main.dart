import 'package:flutter/material.dart';
import 'onboarding/screen/onboarding_screen.dart';
import 'screen/home_screen.dart';
import 'model/meal_model.dart';
import 'data/database_helper/database_helper.dart';
import 'screen/add_meal.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  DatabaseHelper dbHelper = DatabaseHelper.inistance;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => OnboardingScreen(),
        '/home': (context) => HomeScreen(),
        '/addMeal': (context) => AddMealScreen(),
      },
    );
  }
}