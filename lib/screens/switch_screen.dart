import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});
  _SwitchScreenState createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  @override
  bool _value = false;
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
          title: Text('Switch'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Switch(
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
                Switch(
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  activeColor: Colors.indigoAccent,
                ),
                Switch(
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  activeColor: Colors.indigo,
                  activeTrackColor: Colors.indigoAccent,
                ),
                Switch(
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  activeColor: Colors.indigo,
                  activeTrackColor: Colors.deepPurpleAccent,
                  inactiveThumbColor: Colors.indigoAccent,
                ),
                Switch(
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  activeColor: Colors.indigo,
                  activeTrackColor: Colors.deepPurpleAccent,
                  inactiveTrackColor: Colors.deepPurpleAccent[100],
                  inactiveThumbColor: Colors.indigoAccent,
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/switch.png'), //https://codeimg.io/
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
