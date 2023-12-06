import 'package:flutter/material.dart';
import 'package:furniture/pages/home/details.dart';

furnitureContainer(
  BuildContext context,
  String image,
  String name,
  String price,
  String rate,
  double rating,
  String des,
) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Details(image: image, text: name, rating: rating, des:des, price: price,)));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.46,
        height: MediaQuery.of(context).size.height * 0.31,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  blurRadius: 7,
                  spreadRadius: 3,
                  offset: const Offset(2, 4))
            ],
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.42,
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: Image.asset(image)),
              Text(
                name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Row(
                children: [
                  Text(
                    price,
                    style: TextStyle(color: Colors.orange.shade800),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.16,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Text(rate),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
