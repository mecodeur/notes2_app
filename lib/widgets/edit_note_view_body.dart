import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CustomAppBar(title: 'Edite Note', icon: Icons.edit,),
          SizedBox(height: 40),
          CustomTextFormField(
            hintText: 'Title',
          ),
          SizedBox(height: 20),
          CustomTextFormField(
            hintText: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}