import 'package:bokkly_app/constants.dart';
import 'package:bokkly_app/core/utils/app_router.dart';

import 'package:bokkly_app/core/utils/styles.dart';
import 'package:bokkly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: () => GoRouter.of(context).push(AppRouter.kBookDetailsView),
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              CustomBookImage(
                  imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? ''),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Text(book.volumeInfo.title!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Styles.textStyle20
                                .copyWith(fontFamily: kGtSectraFine))),
                    const SizedBox(height: 2),
                    Text(book.volumeInfo.authors?[0] ?? '',
                        style: Styles.textStyle14),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Text('Free',
                            style: Styles.textStyle20
                                .copyWith(fontWeight: FontWeight.bold)),
                        const Spacer(),
                        BookRating(
                            rating: book.volumeInfo.averageRating ?? 0,
                            count: book.volumeInfo.ratingsCount ?? 0),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
