import 'package:flutter/material.dart';

class TextButtonScreen extends StatefulWidget {
  const TextButtonScreen({super.key});
  _TextButtonScreenState createState() => _TextButtonScreenState();
}

class _TextButtonScreenState extends State<TextButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //https://codesinsider.com/flutter-tabbar-tabbarview-example-tutorial/#isScrollable
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Ejemplo",
                icon: Icon(Icons.image_outlined),
              ),
              Tab(text: "Código", icon: Icon(Icons.code)),
            ],
          ),
          title: Text('TabBar y TabView'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                TextButton(
                  child: Text("Button"),
                  onPressed: () {},
                ),
                TextButton.icon(
                  icon: Icon(Icons.save),
                  label: Text("SAVE"),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("button"),
                  style: TextButton.styleFrom(
                    primary: Colors.indigo,
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("button"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.indigo,
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("Button"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.indigo,
                    onSurface: Colors.black,
                  ),
                  onPressed: null,
                ),
                TextButton(
                  child: Text("Button"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.indigo,
                    onSurface: Colors.black,
                  ),
                  onPressed: null,
                ),
                TextButton(
                  child: Text("button"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.indigo,
                    side: BorderSide(color: Colors.deepPurpleAccent, width: 1),
                    elevation: 20,
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("button"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.indigo,
                    side: BorderSide(color: Colors.deepPurpleAccent, width: 1),
                    elevation: 20,
                    minimumSize: Size(100, 50),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("button"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.indigo,
                    side: BorderSide(color: Colors.deepPurpleAccent, width: 1),
                    elevation: 20,
                    minimumSize: Size(100, 50),
                    shadowColor: Colors.indigoAccent,
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("button"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.indigo,
                    side: BorderSide(color: Colors.deepPurpleAccent, width: 1),
                    elevation: 20,
                    minimumSize: Size(100, 50),
                    shadowColor: Colors.indigoAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("button"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.indigo,
                    side: BorderSide(color: Colors.deepPurpleAccent, width: 1),
                    elevation: 20,
                    minimumSize: Size(100, 50),
                    shadowColor: Colors.indigoAccent,
                    shape: CircleBorder(),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("button"),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.indigo,
                      side:
                          BorderSide(color: Colors.deepPurpleAccent, width: 1),
                      elevation: 20,
                      minimumSize: Size(100, 50),
                      shadowColor: Colors.indigoAccent,
                      padding: EdgeInsets.only(
                          left: 60, right: 60, top: 15, bottom: 15)),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("button"),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.indigo,
                      side:
                          BorderSide(color: Colors.deepPurpleAccent, width: 1),
                      elevation: 20,
                      minimumSize: Size(100, 50),
                      shadowColor: Colors.indigoAccent,
                      shape: CircleBorder(),
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                      textStyle:
                          TextStyle(fontSize: 20, fontStyle: FontStyle.italic)),
                  onPressed: () {},
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/textbutton.png'), //https://codeimg.io/
                  Text("Código"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
