import 'package:flutter/material.dart';
import 'package:fluttercomponentes/models/models.dart';
import 'package:fluttercomponentes/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      icon: Icons.remove,
      name: 'ListView Tipo 1',
      route: 'listvoew1',
      screens: const ListView1Screen(),
    )
  ];
  // creamos lista map donde obtiene las rutas
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    // creamos lista map par guardar las rutas actuales del proyecto
    // asignamos la ruta home
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    // ciclo para recorrer todas las pantallas
    for (final option in menuOptions) {
      appRoutes
          .addAll({option.route: (BuildContext context) => option.screens});
    }
    return appRoutes;
  }
}
