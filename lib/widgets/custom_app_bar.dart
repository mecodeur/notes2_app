import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon, this.onPressed}) : super(key: key);

  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 150.0,),
        Text(title, style: TextStyle(fontSize: 32.0, ),),
        Spacer(),
        CustomIcon(icon: icon, onPressed: onPressed,),
      ],
    );
  }
}


