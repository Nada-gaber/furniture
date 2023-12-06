import 'package:flutter/material.dart';
import 'package:furniture/widgets/color.dart';
import 'package:furniture/widgets/floating_container.dart';
import 'package:furniture/widgets/stars_rate.dart';

class Details extends StatefulWidget {
  String image;
  String text;
  double rating;
  String des;
  String price;
  Details({
    Key? key,
    required this.image,
    required this.text,
    required this.rating,
    required this.des,
    required this.price,
  }) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

int _selectedColor = 0;

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Stack(
                clipBehavior: Clip.none,
                alignment: AlignmentDirectional.topCenter,
                fit: StackFit.loose,
                children: <Widget>[
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: korange,
                    ),
                  ),
                  Positioned(
                      bottom: -20,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.4,
                        child: Image.asset(widget.image),
                      )),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.text,
                    style: const TextStyle(
                        fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  StarRating(
                    rating: widget.rating,
                    onRatingChanged: (rating) =>
                        setState(() => widget.rating = rating),
                    color: Colors.amber,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.des,
                style: TextStyle(
                    color: Colors.grey.shade500, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'color',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              _colorPalleta(),
              const SizedBox(
                height: 15,
              ),
              floatedContainer(widget.price)
            ],
          ),
        ),
      ),
    );
  }

  _colorPalleta() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 6.0),
      child: Wrap(
          children: List<Widget>.generate(3, (int index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedColor = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: CircleAvatar(
              radius: 14,
              backgroundColor: index == 0
                  ? Colors.grey.shade800
                  : index == 1
                      ? Colors.blue.shade900
                      : Colors.amber,
              child: _selectedColor == index
                  ? const Icon(
                      Icons.done,
                      color: Colors.white,
                    )
                  : Container(),
            ),
          ),
        );
      })),
    );
  }
}
