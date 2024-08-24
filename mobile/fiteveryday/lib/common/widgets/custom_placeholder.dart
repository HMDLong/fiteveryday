import 'package:flutter/material.dart';

class CustomPlaceholder extends StatelessWidget {
  final double? height;
  final double? width;
  const CustomPlaceholder({
    super.key,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 0,
        color: Colors.grey,
      ),
    );
  }
}
