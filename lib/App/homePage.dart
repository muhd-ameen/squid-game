// ignore_for_file: file_names, prefer_const_constructors, avoid_print, sized_box_for_whitespace, avoid_unnecessary_containers
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:squid_game/Components/recommendScroll.dart';
import 'package:squid_game/constants/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Color(0xFFE5E5E5),
          elevation: 0,
          leading: Container(
            padding: EdgeInsets.all(5),
            child: Hero(
              tag: 'sg',
              child: Image.asset(
                'assets/images/Logo.png',
              ),
            ),
          ),
          title: CupertinoSearchTextField(),
          actions: const [
            Padding(
              padding: EdgeInsets.all(18),
              child: Icon(
                Icons.menu,
                color: kSecondayColor,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Recommended for you',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      alignment: Alignment.center,
                      child: BannerScroll()),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
