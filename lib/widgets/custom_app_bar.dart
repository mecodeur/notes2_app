import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 150.0,),
        Text('Notes', style: TextStyle(fontSize: 32.0, ),),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}


