import 'package:carousel_slider/carousel_slider.dart';
import 'package:fiteveryday/features/plan/screen/plan_item.dart';
import 'package:fiteveryday/common/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlanPage extends StatefulWidget {
  const PlanPage({super.key});

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  List<Widget> getCarouselItems() {
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringRes.planPageTitle),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                width: double.infinity,
                child: CarouselSlider(
                  items: getCarouselItems(),
                  options: CarouselOptions(),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...[1, 2, 3, 4].map(
                      (e) => PlanItem(
                        planDateId: "",
                        title: "Day $e",
                        subtitle: "$e",
                        onStart: e == 2 ? () {} : null,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
