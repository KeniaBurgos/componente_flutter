import 'package:flutter/material.dart';

var juegos = ["Minecraft", "Genshin Impact", "Honkai Star Rail", "Valorant"];

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView Tipo 2'),
        ),
        body: ListView(
          children: [
            //spread
            ...juegos
                .map((games) => ListTile(
                    title: Text(games),
                    trailing:
                        Icon(Icons.arrow_forward_ios, color: Colors.indigo),
                    onTap: () {
                      var seleccion = games;
                      print(seleccion);
                    }))
                .toList(),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            )
          ],
        ));
  }
}
