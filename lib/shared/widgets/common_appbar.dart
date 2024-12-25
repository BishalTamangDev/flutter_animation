import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;

  const CommonAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) => AppBar(
        title: Text(title),
        centerTitle: true,
      );

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
