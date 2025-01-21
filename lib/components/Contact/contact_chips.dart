import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String image;
  final String id;
  final Color colour;

  const CustomChip({
    Key? key,
    required this.image,
    required this.id,
    required this.colour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Icon/Image
          Image.network(
            image,
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 8),

          // Text
          Text(
            id,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}