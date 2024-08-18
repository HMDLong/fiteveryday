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
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("abcd"),
              background: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, i) {
              return SizedBox(
                height: 60,
                width: double.infinity,
                child: Card(
                  child: Text("$i"),
                ),
              );
            },
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}
