import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
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
          title: Text('Card'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        title: Text(
                          "BackgroundColorCard",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      color: AppTheme.primary,
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        title: Text("ElevationCard"),
                      ),
                      elevation: 8,
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        title: Text("ShadowCard"),
                      ),
                      elevation: 8,
                      shadowColor: AppTheme.primary,
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        title: Text("BorderCard"),
                      ),
                      elevation: 8,
                      shadowColor: Colors.indigo,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        //leading: Icon(Icons.music_note),
                        title: Text("Margin Card"),
                      ),
                      elevation: 8,
                      shadowColor: Colors.indigoAccent,
                      margin: EdgeInsets.all(20),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Card(
                        child: ListTile(
                          title: Text("Height and Width Card"),
                        ),
                        elevation: 8,
                        shadowColor: Colors.indigo,
                        margin: EdgeInsets.all(20),
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        title: Text("Rounded Corners Card"),
                      ),
                      elevation: 8,
                      shadowColor: Colors.indigo,
                      margin: EdgeInsets.all(20),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white)),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        title: Text("BorderColor Card"),
                      ),
                      elevation: 8,
                      shadowColor: Colors.indigoAccent,
                      margin: EdgeInsets.all(20),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.indigoAccent, width: 1)),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: Container(
                        height: 160,
                        width: 160,
                        child: Center(
                          child: ListTile(
                            title: Text("Circle Card"),
                          ),
                        ),
                      ),
                      elevation: 8,
                      shadowColor: Colors.indigo,
                      margin: EdgeInsets.all(20),
                      shape: CircleBorder(
                        side: BorderSide(width: 1, color: Colors.white),
                      ),
                    )),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/card.png'), //https://codeimg.io/
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
