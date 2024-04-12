import 'package:bokkly_app/core/utils/styles.dart';
import 'package:bokkly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.size, required this.book});
  final Size size;
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * .2),
            child: CustomBookImage(
                imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? "")),
        const SizedBox(height: 40),
        Text(book.volumeInfo.title!,
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
        const SizedBox(height: 2),
        Opacity(
            opacity: .7,
            child: Text(book.volumeInfo.authors?[0] ?? "",
                style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500))),
        const SizedBox(height: 18),
        BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
            rating: book.volumeInfo.averageRating ?? 0,
            count: book.volumeInfo.ratingsCount ?? 0),
        const SizedBox(height: 37),
        BooksAction(book: book),
      ],
    );
  }
}
