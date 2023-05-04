import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  const StarRating({
    required this.rating,
    super.key,
  });

  final double rating;

  Widget _buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = const Icon(
        Icons.star_border,
        color: Colors.grey,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = const Icon(
        Icons.star_half,
        color: Colors.amber,
      );
    } else {
      icon = const Icon(
        Icons.star,
        color: Colors.amber,
      );
    }
    return icon;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) => _buildStar(context, index)),
    );
  }
}
