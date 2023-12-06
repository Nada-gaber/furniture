import 'package:flutter/material.dart';

textfield() {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(2, 4))
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        autofocus: false,
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            fillColor: Colors.white,
            filled: true,
            border: InputBorder.none,
            hintText: 'Search Furniture',
            contentPadding: const EdgeInsets.all(10),
            suffixIcon: Container(
              decoration: BoxDecoration(
                  color: Colors.orange[800],
                  boxShadow: [
                    BoxShadow(
                        color: Colors.orange.shade800.withOpacity(0.2),
                        spreadRadius: 4,
                        blurRadius: 7,
                        offset: const Offset(2, 2))
                  ],
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: IconButton(
                  icon: const Icon(
                    Icons.tune,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
            )),
      ),
    ),
  );
}
