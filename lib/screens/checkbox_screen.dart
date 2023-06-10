import 'package:flutter/material.dart';

class CheckBoxScreen extends StatefulWidget {
  const CheckBoxScreen({super.key});
  _CheckBoxScreenState createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
  bool _value = false;
  bool _value2 = false;
  bool _value3 = false;
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
          title: Text('CheckBox'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 100,
                  child: Checkbox(
                    value: _value,
                    onChanged: (bool? value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  child: Checkbox(
                    value: _value2,
                    onChanged: (bool? value) {
                      setState(() {
                        _value2 = value!;
                      });
                    },
                    activeColor: Colors.indigo,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  child: Checkbox(
                    value: _value3,
                    onChanged: (bool? value) {
                      setState(() {
                        _value3 = value!;
                      });
                    },
                    activeColor: Colors.indigo,
                    checkColor: Colors.deepPurpleAccent,
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/checkbox.png'), //https://codeimg.io/
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
