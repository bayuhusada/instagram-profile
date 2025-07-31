import 'package:flutter/material.dart';

class TabIcon extends StatefulWidget {
  TabIcon(this.icon, this.active, {super.key});

  final bool active;
  final IconData icon;

  @override
  State<TabIcon> createState() => _TabIconState();
}

class _TabIconState extends State<TabIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(widget.icon),
          const SizedBox(height: 4),
          Container(
            height: 2,
            width: 50,
            color: widget.active ? Colors.black : Colors.transparent,
          ),
        ],
      ),
    );
  }
}

