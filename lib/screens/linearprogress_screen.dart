import 'package:flutter/material.dart';

class LinearProgressScreen extends StatefulWidget {
  const LinearProgressScreen({super.key});
  _LinearProgressScreen createState() => _LinearProgressScreen();
}

class _LinearProgressScreen extends State<LinearProgressScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
          title: Text('Linear Progress'),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.all(20),
                      child: LinearProgressIndicator(
                        value: 0.2,
                      )),
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.all(20),
                      child: LinearProgressIndicator(
                        value: 0.4,
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(Colors.indigo),
                      )),
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.all(20),
                      child: LinearProgressIndicator(
                        value: 0.6,
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(Colors.indigo),
                        backgroundColor: Colors.grey,
                      )),
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.all(20),
                      child: LinearProgressIndicator(
                          value: 0.8,
                          backgroundColor: Colors.grey,
                          color: Colors.deepPurpleAccent)),
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.all(20),
                      child: LinearProgressIndicator(
                        value: 1.0,
                        backgroundColor: Colors.grey,
                        color: Colors.deepPurpleAccent,
                        minHeight: 10,
                      )),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                      'assets/linearprogress.png'), //https://codeimg.io/
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
