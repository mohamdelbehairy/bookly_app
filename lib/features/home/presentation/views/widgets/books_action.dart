import 'package:bokkly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
                  text: '19.99€',
                  backgrounColor: Colors.white,
                  textColor: Colors.black,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  onPressed: () {})),
          Expanded(
              child: CustomButton(
                  text: 'Free Preview',
                  fontSize: 16,
                  backgrounColor: const Color(0xffEF8262),
                  textColor: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  onPressed: () {})),
        ],
      ),
    );
  }
}
