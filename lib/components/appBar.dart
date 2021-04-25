import 'dart:html';

import 'package:flutter/material.dart';
import '../main.dart';
import '../pages/carwash.dart';
import '../routes/routes.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = Colors.amber;
  final Text title;
  final AppBar appBar;
  final List<Widget> widgets;

  // you can add more fields that meet your needs

  const CommonAppBar({Key key, this.title, this.appBar, this.widgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: backgroundColor,
      actions: widgets,
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
