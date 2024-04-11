import 'package:bokkly_app/core/utils/styles.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * .2),
            child: const CustomBookImage(
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThgzj5oWSlQgrZhI2C_tBwr6cGyWgKNoZx7froAtVA6gTTKICiqe_Fja7mSfD9Wtzvj1A&usqp=CAU')),
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
        const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
            rating: 10,
            count: 250),
        const SizedBox(height: 37),
        const BooksAction(),
      ],
    );
  }
}
