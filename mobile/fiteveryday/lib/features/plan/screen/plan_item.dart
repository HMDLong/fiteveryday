import 'package:fiteveryday/common/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class PlanItem extends StatelessWidget {
  final String planDateId;
  final String title;
  final String subtitle;
  final List<String>? tags;
  final void Function()? onStart;

  const PlanItem({
    super.key,
    required this.planDateId,
    required this.title,
    required this.subtitle,
    this.tags,
    this.onStart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: onStart == null ? Colors.white : Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: onStart == null
                  ? SizedBox(
                      child: Icon(
                        Icons.coffee,
                        color: Colors.grey,
                      ),
                    )
                  : RoundedButton(
                      text: "Start",
                      onPressed: onStart,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
