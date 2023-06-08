import 'package:flutter/material.dart';

import '../../../../resources/widgets/inputs/custom_textfield.dart';

class Step5 extends StatelessWidget {
  final firstName = TextEditingController();
  Step5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomTextField(
          controller: firstName,
          hintText: "Input",
        ),
      ],
    );
  }
}
