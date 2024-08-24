import 'package:fiteveryday/common/widgets/custom_menu.dart';
import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({super.key});

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: CustomMenu<int>(
              onChanged: (value) {},
              items: [
                DropdownMenuEntry(value: 0, label: "Weight"),
                DropdownMenuEntry(value: 1, label: "Stats"),
                DropdownMenuEntry(value: 2, label: "Water"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
