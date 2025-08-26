import 'package:blood_donation_app/view/widget/customer_button/customer_button.dart';
import 'package:flutter/material.dart';

class ChoiceTypeScreen extends StatelessWidget {
  const ChoiceTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomerButton()
        ],
      ),
    );
  }
}
