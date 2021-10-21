// ignore_for_file: file_names, prefer_const_constructors, avoid_print, sized_box_for_whitespace

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:squid_game/App/homePage.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor('#50505C'),
      child: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Onbarding.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 40),
              child: Container(
                height: 290,
                width: double.maxFinite,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),

                  // make sure we apply clip it properly
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                    child: Container(
                        alignment: Alignment.center,
                        color: Colors.grey.withOpacity(0.1),
                        child: Column(
                          children: [
                            Hero(
                                tag: 'sg',
                                child: Image.asset('assets/images/Name.png')),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      HexColor('#E84381')),
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          EdgeInsets.symmetric(
                                              vertical: 13, horizontal: 75)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                          side:
                                              BorderSide(color: Colors.red)))),

                              // style: ElevatedButton.styleFrom(
                              //     shape: BoxShape.circle,
                              //     padding: EdgeInsets.symmetric(
                              //         vertical: 15, horizontal: 80)),
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage())),
                              child: Text(
                                'Shop Now',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
