import 'package:flutter/material.dart';
import '../../../../providers/selected_provider.dart';
import '../../../../resources/widgets/inputs/custom_textfield.dart';
import 'package:provider/provider.dart';

class Step5 extends StatelessWidget {
  final TextEditingController paymentMethodController = TextEditingController();
  final TextEditingController bankAccountIdController = TextEditingController();
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController cardHolderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final selectedStep = Provider.of<SelectedStep>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Information',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        DropdownButtonFormField<String>(
          value: selectedStep.paymentMethod,
          onChanged: (newValue) {
            selectedStep.updateStep5(
              newValue,
              selectedStep.bankAccountId,
              selectedStep.cardNumber,
              selectedStep.cardHolder,
            );
            print(selectedStep.paymentMethod);
          },
          items: [
            DropdownMenuItem(
              value: 'PayPal',
              child: Text('PayPal'),
            ),
            DropdownMenuItem(
              value: 'Debit Card',
              child: Text('Debit Card'),
            ),
            DropdownMenuItem(
              value: 'Credit Card',
              child: Text('Credit Card'),
            ),
          ],
          decoration: InputDecoration(
            labelText: 'Payment Method',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16.0),
        TextField(
          controller: bankAccountIdController,
          onChanged: (value) {
            selectedStep.updateStep5(
              selectedStep.paymentMethod,
              value,
              selectedStep.cardNumber,
              selectedStep.cardHolder,
            );
            print(selectedStep.bankAccountId);
          },
          decoration: InputDecoration(
            labelText: 'Bank Account ID',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16.0),
        TextField(
          controller: cardNumberController,
          onChanged: (value) {
            selectedStep.updateStep5(
              selectedStep.paymentMethod,
              selectedStep.bankAccountId,
              value,
              selectedStep.cardHolder,
            );
            print(selectedStep.cardNumber);
          },
          decoration: InputDecoration(
            labelText: 'Card Number',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16.0),
        TextField(
          controller: cardHolderController,
          onChanged: (value) {
            selectedStep.updateStep5(
              selectedStep.paymentMethod,
              selectedStep.bankAccountId,
              selectedStep.cardNumber,
              value,
            );
            print(selectedStep.cardHolder);
          },
          decoration: InputDecoration(
            labelText: 'Card Holder',
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
