import 'package:flutter/material.dart';
import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: ListView.builder(
          itemCount: 7,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(
                imageUrl: 'https://m.media-amazon.com/images/I/71HbYElfY0L._AC_UF1000,1000_QL80_.jpg',

              ),
            );
          }),
    );
  }
}
