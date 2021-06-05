import 'package:coffee_app/constants.dart';
import 'package:coffee_app/models/Coffee.dart';
import 'package:flutter/material.dart';

Row buildRating(Coffee item) {
  return Row(
    children: [
      for (int i = 0; i < item.rating.floor(); i++)
        Icon(
          Icons.star,
          color: kRatingColor,
        ),
      for (int i = 0; i < (5 - item.rating.floor()); i++)
        Icon(
          Icons.star_border,
          color: kRatingColor,
        ),
      SizedBox(width: 10),
      Text(
        item.rating.toString(),
        style: TextStyle(color: Colors.grey),
      ),
      SizedBox(width: 10),
      Text(
        "(${item.reviews.toString()} reviews)",
        style: TextStyle(color: Colors.grey),
      ),
    ],
  );
}
