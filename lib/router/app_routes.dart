import 'package:flutter/material.dart';
import 'package:fluttercomponentes/models/models.dart';
import 'package:fluttercomponentes/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      icon: Icons.list,
      name: 'ListView Tipo 1',
      route: 'listview1',
      screens: const ListView1Screen(),
    ),
    MenuOption(
      icon: Icons.format_list_numbered,
      name: 'ListView Tipo 2',
      route: 'listview2',
      screens: const ListView2Screen(),
    ),
    MenuOption(
      icon: Icons.tab,
      name: 'TabBar y TabView',
      route: 'tabview',
      screens: const TabScreen(),
    ),
    MenuOption(
      icon: Icons.smart_button,
      name: 'Tipos de Botones',
      route: 'buttons',
      screens: const BotonScreen(),
    ),
    MenuOption(
      icon: Icons.text_fields,
      name: 'Campos de Texto',
      route: 'textfield',
      screens: const TextFieldScreen(),
    ),
    MenuOption(
      icon: Icons.warning,
      name: 'Pantalla de Alerta',
      route: 'alertdialog',
      screens: const AlertDialogScreen(),
    ),
    MenuOption(
      icon: Icons.crop_3_2,
      name: 'Card',
      route: 'cardview',
      screens: const CardScreen(),
    ),
    MenuOption(
      icon: Icons.grid_view,
      name: 'GridView',
      route: 'gridview',
      screens: const GridViewScreen(),
    ),
    MenuOption(
      icon: Icons.apps,
      name: 'Icons',
      route: 'iconsgrid',
      screens: const IconsGridScreen(),
    ),
    MenuOption(
      icon: Icons.horizontal_rule,
      name: 'Linear Progress',
      route: 'linearprogress',
      screens: const LinearProgressScreen(),
    ),
    MenuOption(
      icon: Icons.linear_scale,
      name: 'Slider',
      route: 'slider',
      screens: const SliderScreen(),
    ),
    MenuOption(
      icon: Icons.check_box,
      name: 'CheckBox',
      route: 'checkbox',
      screens: const CheckBoxScreen(),
    ),
    MenuOption(
      icon: Icons.radio_button_checked,
      name: 'RadioButton',
      route: 'radiobutton',
      screens: const RadioButtonScreen(),
    ),
    MenuOption(
      icon: Icons.toggle_on,
      name: 'Switch',
      route: 'switch',
      screens: const SwitchScreen(),
    ),
    MenuOption(
      icon: Icons.donut_large,
      name: 'Circular Progress',
      route: 'circularprogress',
      screens: const CircularProgressScreen(),
    ),
    MenuOption(
      icon: Icons.menu,
      name: 'Horizontal Drawer',
      route: 'drawer',
      screens: const HorizontalDrawerScreen(),
    ),
    MenuOption(
      icon: Icons.call_to_action,
      name: 'Snack Bar',
      route: 'snackbar',
      screens: const SnackBarScreen(),
    ),
    MenuOption(
      icon: Icons.abc,
      name: 'TextButton',
      route: 'textbutton',
      screens: const TextButtonScreen(),
    ),
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
