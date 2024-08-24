import 'package:fiteveryday/features/home/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double progress = 0;

  Future<void> initData() async {
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      progress = 0.25;
    });
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      progress = 0.5;
    });
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      progress = 0.75;
    });
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      progress = 1.0;
    });
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), initData).then(
      (value) {
        pushScreen(context, screen: const HomePage());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Image.network("https://wallpapercave.com/wp/wp3018885.jpg").image,
            ),
          ),
          child: SizedBox.expand(
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 36),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Loading your data",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
                    ),
                  ),
                  LinearProgressIndicator(
                    value: progress,
                    color: Colors.green,
                    backgroundColor: Colors.white,
                    minHeight: 12,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
