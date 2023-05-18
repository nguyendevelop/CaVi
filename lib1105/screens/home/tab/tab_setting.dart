import 'package:flutter/material.dart';

class TabSetting extends StatelessWidget {
  const TabSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              Text("Tab header"),
            ],
          ),
        ],
      ),
    );
  }
}
