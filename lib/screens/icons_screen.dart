import 'package:flutter/material.dart';

class IconsGridScreen extends StatefulWidget {
  const IconsGridScreen({super.key});
  _IconsGridScreenState createState() => _IconsGridScreenState();
}

class _IconsGridScreenState extends State<IconsGridScreen> {
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
          title: Text('GridView'),
        ),
        body: TabBarView(
          children: <Widget>[
            GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  // numero de columnas
                  crossAxisCount: 4,
                  // espaciado entre columnas
                  crossAxisSpacing: 10,
                  // espaciados entre las filas
                  mainAxisSpacing: 10,
                  // alto de las columnas
                  mainAxisExtent: 80),
              children: [
                Container(
                  color: Colors.indigoAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.face_2,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.indigoAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.auto_awesome,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.indigoAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.dark_mode,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.indigoAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.light_mode,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.indigoAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.spa,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.indigoAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.bakery_dining_sharp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.indigoAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.yard,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.indigoAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.outlet,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.indigoAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.ac_unit,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.indigoAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.icecream,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.indigoAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.headphones,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.indigoAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.sports_esports,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.indigoAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.nights_stay,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.indigoAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.wb_sunny,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.indigoAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.alternate_email,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.indigoAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.folder,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/gridview.png'), //https://codeimg.io/
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
