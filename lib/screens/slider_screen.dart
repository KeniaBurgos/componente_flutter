import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});
  _SliderScreen createState() => _SliderScreen();
}

class _SliderScreen extends State<SliderScreen> {
  @override
  double val = 1;
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
          title: Text('Slider'),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Slider(
                    value: val,
                    onChanged: (value) {
                      setState(() {
                        val = value;
                      });
                    },
                    min: 0,
                    max: 10,
                    activeColor: Colors.indigo,
                    inactiveColor: Colors.indigo[100],
                    label: val.round().toString(),
                    divisions: 10,
                  )
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                      'assets/slider.png'), //https://codeimg.io/ //https://app.codeimage.dev/
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
