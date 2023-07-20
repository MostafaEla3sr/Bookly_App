part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();
  @override
  List<Object> get props => [];
}

class FeaturedBookInitial extends FeaturedBooksState {

}
class FeaturedBookLoading extends FeaturedBooksState{}
class FeaturedBookFailure extends FeaturedBooksState{
  final String errMessage ;

  const FeaturedBookFailure(this.errMessage);
}
class FeaturedBookSuccess extends FeaturedBooksState{
  final List<BookModel> books;

  const FeaturedBookSuccess(this.books);
}
