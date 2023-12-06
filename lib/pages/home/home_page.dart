import 'package:flutter/material.dart';
import 'package:furniture/widgets/color.dart';
import 'package:furniture/widgets/container.dart';
import 'package:furniture/widgets/furniture_container.dart';
import 'package:furniture/widgets/textfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color firstContainerColor = korange;
  Color secondContainerColor = kwhite;
  Color thirdContainerColor = kwhite;
  Color fourthContainerColor = kwhite;

  Color textClicked1 = kwhite;
  Color textClicked2 = Colors.black;
  Color textClicked3 = Colors.black;
  Color textClicked4 = Colors.black;

  String image1 = 'assets/chair.png';
  String image2 = 'assets/armchair2.png';
  String image3 = 'assets/bed2.png';
  String image4 = 'assets/table2.png';

  void changeColors(int containerIndex) {
    setState(() {
      firstContainerColor = kwhite;
      secondContainerColor = kwhite;
      thirdContainerColor = kwhite;
      fourthContainerColor = kwhite;

      textClicked1 = Colors.black;
      textClicked2 = Colors.black;
      textClicked3 = Colors.black;
      textClicked4 = Colors.black;

      image1 = 'assets/chair2.png';
      image2 = 'assets/armchair2.png';
      image3 = 'assets/bed2.png';
      image4 = 'assets/table2.png';

      if (containerIndex == 1) {
        firstContainerColor = korange;
        textClicked1 = kwhite;
        image1 = 'assets/chair.png';
      } else if (containerIndex == 2) {
        secondContainerColor = korange;
        textClicked2 = kwhite;
        image2 = 'assets/armchair.png';
      } else if (containerIndex == 3) {
        thirdContainerColor = korange;
        textClicked3 = kwhite;
        image3 = 'assets/bed.png';
      } else if (containerIndex == 4) {
        fourthContainerColor = korange;
        textClicked4 = kwhite;
        image4 = 'assets/table.png';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Home',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
      backgroundColor: const Color(0xffFEFEFE),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Choose your \nSuitable furniture',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(
                height: 15,
              ),
              textfield(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Catagories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  containerStyle(context, image1, 'chair', firstContainerColor,
                      () {
                    changeColors(1);
                  }, textClicked1),
                  containerStyle(context, image2, 'sofa', secondContainerColor,
                      () {
                    changeColors(2);
                  }, textClicked2),
                  containerStyle(context, image3, 'bed', thirdContainerColor,
                      () {
                    changeColors(3);
                  }, textClicked3),
                  containerStyle(context, image4, 'table', fourthContainerColor,
                      () {
                    changeColors(4);
                  }, textClicked4),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Popular',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.33,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    furnitureContainer(
                        context,
                        'assets/1.png',
                        'Boogly Chair',
                        '\$191',
                        '4.0',
                        4.0,
                        'this chair is very comfortable and modren you can put it and give your living room the best look ever.when you sit on it you will know'),
                    furnitureContainer(
                        context,
                        'assets/2.png',
                        'Modern Chair',
                        '\$299',
                        '3.5',
                        3.5,
                        'Comfortable, with just the right "sit" Sherrill Furniture Lounge Chairs offer the finest fabrics and custom options you can find'),
                    furnitureContainer(
                        context,
                        'assets/6.png',
                        'Bromely Chair',
                        '\$219',
                        '4.5',
                        3.5,
                        'Comfortable, with just the right "sit" Sherrill Furniture Lounge Chairs offer the finest fabrics and custom options you can find')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
