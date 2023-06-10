import 'package:flutter/material.dart';

class BotonScreen extends StatefulWidget {
  const BotonScreen({super.key});
  _BotonScreenState createState() => _BotonScreenState();
}

class _BotonScreenState extends State<BotonScreen> {
  int _value = 1;
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
          title: Text('Tipos de Botones'),
        ),
        body: TabBarView(
          children: <Widget>[
            //textbutton
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  child: TextButton(
                    child: Text("Boton Texto"),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  //color: Colors.indigo,
                  child: OutlinedButton(
                    child: Text("Outline Button"),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  //color: Colors.indigo,
                  child: ElevatedButton(
                    child: Text("Elevated Button"),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  //color: Colors.indigo,
                  child: IconButton(
                    icon: Icon(Icons.spa_outlined),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),

                  ///color: Colors.indigo,
                  child: DropdownButton(
                      value: 1,
                      items: [
                        DropdownMenuItem(
                          child: Text("uno"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("dos"),
                          value: 2,
                        )
                      ],
                      onChanged: (_value) {
                        setState(() {
                          _value = _value;
                        });
                      },
                      hint: Text("Select item")),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  //color: Colors.indigo,
                  child: FloatingActionButton(
                    child: Icon(Icons.emoji_nature_outlined),
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  //color: Colors.indigo,
                  child: PopupMenuButton(
                      itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Text("uno"),
                              value: 1,
                            ),
                            PopupMenuItem(
                              child: Text("dos"),
                              value: 2,
                            )
                          ]),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  //color: Colors.indigo,
                  child: ButtonBar(
                    children: [
                      TextButton(
                        child: Text("Yes"),
                        onPressed: () {},
                      ),
                      TextButton(
                        child: Text("No"),
                        onPressed: () {},
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
                  Image.asset('assets/button.png'), //https://codeimg.io/
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
