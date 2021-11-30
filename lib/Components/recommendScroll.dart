// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class BannerScroll extends StatefulWidget {
  const BannerScroll({Key? key}) : super(key: key);

  @override
  _BannerScrollState createState() => _BannerScrollState();
}

class _BannerScrollState extends State<BannerScroll> {
  final List<String> images = [
    "assets/images/Item1.png",
    "assets/images/item2.png",
    "assets/images/Item1.png",
    "assets/images/item2.png",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: ScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Container(
            padding: EdgeInsets.all(10),
            height: 200,
            width: 170,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(images[index])),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(5)),
          ),
        );
      },
    );
  }
}
