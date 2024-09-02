import 'package:folio/features/home/domain/home_entites.dart';

abstract class HomeRepo{
  Future<List<BookEntities>> fetchFeaturedBooks();
  Future<List<BookEntities>> fetchBestBooks();
}