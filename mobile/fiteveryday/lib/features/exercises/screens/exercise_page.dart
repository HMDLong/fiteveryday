import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExercisePage extends StatefulWidget {
  const ExercisePage({super.key});

  @override
  State<ExercisePage> createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("exercise"),
            ElevatedButton(
              onPressed: () {
                context.go("/home");
              },
              child: Text("to home"),
            )
          ],
        ),
      ),
    );
  }
}
