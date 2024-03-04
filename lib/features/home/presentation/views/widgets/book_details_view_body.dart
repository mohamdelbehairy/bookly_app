import 'package:bokkly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * .18),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
