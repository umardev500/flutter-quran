import 'package:flutter/material.dart';
import 'package:quran/components/molecules/menu_item.dart';

class ReadAppbarAnchor extends StatelessWidget {
  ReadAppbarAnchor({super.key});

  final MenuController _menuController = MenuController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MenuAnchor(
          controller: _menuController,
          consumeOutsideTap: true,
          alignmentOffset: Offset(5, -8),
          style: MenuStyle(
            backgroundColor: WidgetStateProperty.resolveWith((states) {
              return Colors.white;
            }),
          ),
          builder: (context, showMenu, child) {
            return IconButton(
              icon: Icon(Icons.more_vert_rounded),
              onPressed: () {
                if (_menuController.isOpen) {
                  _menuController.close();
                  return;
                }

                _menuController.open();
              },
            );
          },
          menuChildren: [
            MenuItem(
              leadingIcon: Icons.light_mode_rounded,
              title: "Switch Mode",
            ),
            MenuItem(
              leadingIcon: Icons.settings_rounded,
              title: "Settings",
            ),
            MenuItem(
              leadingIcon: Icons.info_outline_rounded,
              title: "About",
            ),
          ]),
    );
  }
}
