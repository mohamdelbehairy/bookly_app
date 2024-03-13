import 'package:bokkly_app/core/errors/failures.dart';
import 'package:bokkly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bokkly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fethBestFeaturedBooks() {
    
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fethBestSellerBooks() {
    
    throw UnimplementedError();
  }
}
