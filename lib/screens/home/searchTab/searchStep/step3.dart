import 'package:flutter/material.dart';

import '../../../../resources/widgets/inputs/custom_textfield.dart';

class Step3 extends StatelessWidget {
  final firstName = TextEditingController();
  Step3({
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
