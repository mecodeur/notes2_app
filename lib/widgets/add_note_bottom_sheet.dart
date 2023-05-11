import 'package:flutter/material.dart';
import 'package:notes2_app/widgets/custom_text_field.dart';

import 'custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              CustomTextFormField(
                hintText: 'Title',
              ),
              SizedBox(height: 20),
              CustomTextFormField(
                hintText: 'Content',
                maxLines: 5,
              ),
              SizedBox(height: 60),
              CustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}
