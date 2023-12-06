import 'package:flutter/material.dart';
import 'package:furniture/widgets/color.dart';

floatedContainer(
  String price,
) {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(2, 4))
      ],
      color: korange,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add to Cart',
                style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 20, color: kwhite),
              ),
            ],
          ),
        ),
        Text(
          price,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 16, color: kwhite),
        ),
      ],
    ),
  );
}
