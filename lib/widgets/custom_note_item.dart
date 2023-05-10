import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xfffffd385),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text('Flutter Tips', style: TextStyle(fontSize: 26, color: Colors.black),),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13.0,),
              child: Text('Build your career with Flutter', style: TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.5)),),
            ),
            trailing: IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.trash, color: Colors.black, size: 25.0,),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Text('10 May 2023', style: TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.5)),),
          ),

        ],
      ),
    );
  }
}
