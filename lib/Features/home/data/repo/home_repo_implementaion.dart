import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/services/api_services.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation implements HomeRepo {
  ApiServices? apiServices;
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiServices?.getData(
          endPoint:
              'volumes?Filtering=free-ebooks&subjectstartIndex =&q=subject:movies&sorting=newest');
      List<BookModel> bookmodel = [];
      for (var item in data?['items']) {
        bookmodel.add(BookModel.fromJson(item));
      }
      return right(bookmodel);
    } on Exception {
      // TODO
      return left(ServerFailure());
    }

    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBooks() {
    // TODO: implement fetchBooks
    throw UnimplementedError();
  }
}
