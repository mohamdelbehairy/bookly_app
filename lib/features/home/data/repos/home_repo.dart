import 'package:bokkly_app/core/errors/failures.dart';
import 'package:bokkly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fethNewestBooks();
  Future<Either<Failure, List<BookModel>>> fethBestFeaturedBooks();
   Future<Either<Failure, List<BookModel>>> fethSimilarBooks({required String category});
}
