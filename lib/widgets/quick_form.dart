import 'package:flutter/material.dart';

import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/title_with_textField.dart';

class QuickForm extends StatelessWidget {
  const QuickForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: TitleWithTextField(
                  text: 'Customer name', hint: 'Type customer name'),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleWithTextField(
                  text: 'Customer Email', hint: 'Type customer email'),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        const Row(
          children: [
            Expanded(
              child: TitleWithTextField(
                  text: 'Item name', hint: 'Type customer name'),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleWithTextField(text: 'Item mount', hint: 'USD'),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              text: 'Add more details',
              backgroundColor: Colors.white,
              textColor: Color(0xFF4EB7F2),
            )),
            SizedBox(
              width: 24,
            ),
            Expanded(
                child: CustomButton(
              text: 'Send Money',
            ))
          ],
        )
      ],
    );
  }
}
