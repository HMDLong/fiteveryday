import 'package:flutter/material.dart';

class CustomMenu<T> extends StatefulWidget {
  final void Function(T value) onChanged;
  final List<DropdownMenuEntry<T>> items;
  final T? initValue;
  const CustomMenu({
    super.key,
    required this.items,
    required this.onChanged,
    this.initValue,
  });

  @override
  State<CustomMenu> createState() => _CustomMenuState();
}

class _CustomMenuState<T> extends State<CustomMenu<T>> {
  late T selected;

  @override
  void initState() {
    selected = widget.initValue ?? widget.items[0].value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        final item = widget.items[index];

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selected = item.value;
              });
            },
            child: AnimatedDefaultTextStyle(
              curve: Curves.easeIn,
              style: TextStyle(
                fontSize: item.value == selected ? 22 : 16,
                color: item.value == selected ? Colors.black : Colors.grey,
                fontWeight: item.value == selected ? FontWeight.w600 : FontWeight.normal,
              ),
              duration: const Duration(milliseconds: 200),
              child: Text(item.label),
            ),
          ),
        );
      },
    );
  }
}
