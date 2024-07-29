import 'package:fiteveryday/features/home/screen/today_train_sect.dart';
import 'package:fiteveryday/features/home/screen/user_greeting_sect.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserGreetingSection(),
            SizedBox(height: 12),
            TodayExerciseSection(),
          ],
        ),
      ),
    );
  }
}
