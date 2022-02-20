import 'package:flutter/material.dart';
import 'package:transition_flutter/custom_page_route.dart';
import 'package:transition_flutter/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            RaisedButton(
                child: Text("left to right"),
                onPressed: () {
                  Navigator.push(context, SlideLeftToRightRoute(page: SecondPage()));

            }),

            SizedBox(
              height: 7,
            ),
            RaisedButton(child: Text("right to left"), onPressed: () {
              Navigator.push(context, SlideRightToLeftRoute(page: SecondPage()));
            }),
            SizedBox(
              height: 7,
            ),
            RaisedButton(child: Text("down to up"), onPressed: () {
              Navigator.push(context, SlideDownToUpRoute(page: SecondPage()));
            }),
            SizedBox(
              height: 7,
            ),
            RaisedButton(child: Text("up to down"), onPressed: () {
              Navigator.push(context, SlideUpToDownRoute(page: SecondPage()));
            }),

            SizedBox(
              height: 7,
            ),
            RaisedButton(child: Text("scale"), onPressed: () {
              Navigator.push(context, ScaleRoute(page: SecondPage()));
            }),

            SizedBox(
              height: 7,
            ),
            RaisedButton(child: Text("rotation"), onPressed: () {
              Navigator.push(context, RotationRoute(page: SecondPage()));
            }),



            SizedBox(
              height: 7,
            ),
            RaisedButton(child: Text("size route"), onPressed: () {
              Navigator.push(context, SizeRoute(page: SecondPage()));
            }),


            SizedBox(
              height: 7,
            ),
            RaisedButton(child: Text("fade route"), onPressed: () {
              Navigator.push(context, FadeRoute(page: SecondPage()));
            }),

          ],
        ),
      ),
    );
  }
}
