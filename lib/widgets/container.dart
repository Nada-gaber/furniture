import 'package:flutter/material.dart';

containerStyle(
  BuildContext context,
  String image,
  String title,
  Color color,
  void Function() onTap,

  Color textColor,
) {
  return InkWell(
    onTap:
      onTap,
    
    child: Container(
      width: MediaQuery.of(context).size.width * 0.18,
      height: MediaQuery.of(context).size.height * 0.12,
      decoration:
          BoxDecoration(
            boxShadow: [BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(2, 4)
            )],
            color: color, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
              child: Image.asset(image)),
          Text(
            title,
            style:  TextStyle(
                color: textColor, fontWeight: FontWeight.bold, fontSize: 15),
          )
        ],
      ),
    ),
  );
}
