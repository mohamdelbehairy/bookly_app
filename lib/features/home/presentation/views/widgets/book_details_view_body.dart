import 'package:bokkly_app/core/utils/styles.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/books_action.dart';
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
              padding: EdgeInsets.symmetric(horizontal: size.width * .2),
              child: const CustomBookImage()),
          const SizedBox(height: 40),
          Text('The Jungle Book',
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 2),
          Opacity(
            opacity: .7,
            child: Text('Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
          ),
          const SizedBox(height: 18),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 37),
          const BooksAction(),
        ],
      ),
    );
  }
}
