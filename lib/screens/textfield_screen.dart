import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  @override
  //String val = "";
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
          title: Text('TextField'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  //color: Colors.indigo,
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Username",
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.all(10),
                    //color: Colors.indigo,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        labelText: "Username",
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    //color: Colors.indigo,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Username",
                          helperText: "Enter username/email "),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    //color: Colors.indigo,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle:
                              TextStyle(color: Colors.purple, fontSize: 20),
                          helperText: "Enter username/email "),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    //color: Colors.indigo,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Username",
                        helperText: "Enter username/email ",
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    //color: Colors.indigo,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Username",
                        labelText: "Login",
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    //color: Colors.indigo,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black54)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple)),
                        hintText: "Username",
                        helperText: "Enter username/email ",
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    //color: Colors.indigo,
                    padding: EdgeInsets.all(20),
                    child: new Theme(
                        data: new ThemeData(
                          primaryColor: Colors.indigoAccent,
                          primaryColorDark: Colors.indigo,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Username",
                              labelText: "Login",
                              labelStyle: TextStyle(color: Colors.purple)),
                        ))),
                Container(
                    margin: const EdgeInsets.all(10),
                    //color: Colors.indigo,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Username",
                          labelText: "Login",
                          icon: Icon(Icons.spa)),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    //color: Colors.indigo,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Username",
                          labelText: "Login",
                          suffixIcon: Icon(Icons.spa)),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    //color: Colors.indigo,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Username",
                          labelText: "Login",
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.deepPurpleAccent,
                          )),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    //color: Colors.indigo,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(prefixText: "Email"),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    //color: Colors.indigo,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      textAlign: TextAlign.right,
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    //color: Colors.indigo,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      maxLength: 5,
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    //color: Colors.indigo,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      maxLines: null,
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    //color: Colors.indigo,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      textAlign: TextAlign.right,
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    //color: Colors.indigo,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      keyboardType: TextInputType.number,
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    //color: Colors.indigo,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      keyboardType: TextInputType.text,
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    //color: Colors.indigo,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      obscureText: true,
                    )),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/textfield.png'), //https://codeimg.io/
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
