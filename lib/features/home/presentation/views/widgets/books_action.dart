import 'package:bokkly_app/core/utils/function/lanuch_url.dart';
import 'package:bokkly_app/core/widgets/custom_button.dart';
import 'package:bokkly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
                  text: 'Free',
                  backgrounColor: Colors.white,
                  textColor: Colors.black,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16)),
                  onPressed: () {})),
          Expanded(
              child: CustomButton(
                  text: getText(book),
                  fontSize: 16,
                  backgrounColor: const Color(0xffEF8262),
                  textColor: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                  onPressed: () async {
                    await lanchCustomUrl(context, book.volumeInfo.previewLink);
                  })),
        ],
      ),
    );
  }

  String getText(BookModel book) {
    if (book.volumeInfo.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Preview';
    }
  }
}
