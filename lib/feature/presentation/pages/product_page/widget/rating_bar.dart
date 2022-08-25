import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarWidget extends StatelessWidget {
  final double ratingUsers;
  const RatingBarWidget({Key? key, required this.ratingUsers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 38, bottom: 30, right: 38),
      child: RatingBar.builder(
        itemSize: 18,
        allowHalfRating: true,
        ignoreGestures: true,
        initialRating: ratingUsers,
        itemPadding: const EdgeInsets.symmetric(horizontal: 4.5),
        itemCount: 5,
        direction: Axis.horizontal,
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (_) {},
      ),
    );
  }
}
