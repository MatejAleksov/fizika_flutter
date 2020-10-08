import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  static const String ROUTE_NAME = '/main_page';
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 20, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
              "Znanje katerega\nletnika bi rad\nizboljšal danes?",
              style: TextStyle(
                  fontSize: 35,
                  height: 1.2,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Montserrat'),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          courseWidget('prof. Zupan', '1. letnik', 'learn',
                              Color(0xffbdcddfa), Color(0xffcedaff)),
                          SizedBox(height: 20),
                          courseWidget('prof. Zupan', '2. letnik', 'learn',
                              Color(0xffe9eefa), Colors.white),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            height: 50,
                          ),
                          courseWidget('prof. Zupan', '3. letnik', 'learn',
                              Color(0xffe9eefa), Colors.white),
                          SizedBox(height: 20),
                          courseWidget('prof. Zupan', 'Priprave na maturo',
                              'learn', Color(0xffbdcddfa), Color(0xffcedaff)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container courseWidget(String professor, String letnik, String image,
      Color categoryColor, Color bgColor) {
    return Container(
      padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10),
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.all(Radius.circular(10))),
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: categoryColor,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Text(
                '$professor',
                style: TextStyle(
                    color: (categoryColor == Color(0xffe9eefa)
                        ? Color(0xff2657ce)
                        : Colors.white),
                    fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$letnik',
              style: TextStyle(
                  color: (bgColor == Color(0xffff5954)
                      ? Colors.white
                      : Colors.black),
                  fontSize: 20,
                  height: 1,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 10,
            ),
            Hero(
              tag: '$image',
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/$image.png'))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
