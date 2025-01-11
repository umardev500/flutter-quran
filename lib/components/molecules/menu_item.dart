import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final IconData? leadingIcon;
  const MenuItem({super.key, required this.title, this.leadingIcon});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: MenuItemButton(
        leadingIcon: leadingIcon != null ? Icon(leadingIcon) : null,
        style: ButtonStyle(
          padding: WidgetStateProperty.resolveWith((states) {
            return EdgeInsets.only(left: 16, right: 16);
          }),
        ),
        onPressed: () {},
        child: Text(title),
      ),
    );
  }
}
