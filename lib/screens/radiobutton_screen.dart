import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({super.key});
  _RadioButtonScreenState createState() => _RadioButtonScreenState();
}

class _RadioButtonScreenState extends State<RadioButtonScreen> {
  @override
  int val = 1;
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
          title: Text('RadioBotton'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                ListTile(
                  title: Text("Masculino"),
                  leading: Radio(
                    value: 1,
                    groupValue: val,
                    onChanged: (int? value) {
                      setState(() {
                        val = value!;
                      });
                    },
                    activeColor: Colors.indigoAccent,
                  ),
                ),
                ListTile(
                  title: Text("Femenino"),
                  leading: Radio(
                    value: 2,
                    groupValue: val,
                    onChanged: (int? value) {
                      setState(() {
                        val = value!;
                      });
                    },
                    activeColor: Colors.indigoAccent,
                  ),
                ),
                ListTile(
                  title: Text("Otro"),
                  leading: Radio(
                    value: 3,
                    groupValue: val,
                    onChanged: (int? value) {
                      setState(() {
                        val = value!;
                      });
                    },
                    activeColor: Colors.indigoAccent,
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/radiobutton.png'), //https://codeimg.io/
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
