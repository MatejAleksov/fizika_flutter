import 'package:fizika_flutter/ui/main.page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String ROUTE_NAME = '/';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff6a65),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    "Spletni učbenik",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      height: 1.2,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "za fiziko",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      height: 1.2,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "z rešenimi vajami",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                        height: 1.2),
                  ),
                  margin: EdgeInsets.only(bottom: 110),
                )
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image/3733781-removebg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                right: 20,
                child: Center(
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(
                      context,
                      MainPage.ROUTE_NAME,
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 70,
                        vertical: 15,
                      ),
                      margin: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                      child: Text(
                        "Nadaljuj v učbenik",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
