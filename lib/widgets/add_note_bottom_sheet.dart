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
          child: AddNoteForm(),
        ),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 40),
          CustomTextFormField(
            onSaved: (value){
              title = value;
            },
            hintText: 'Title',
          ),
          SizedBox(height: 20),
          CustomTextFormField(
            onSaved: (value){
              subTitle = value;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
          SizedBox(height: 60),
          CustomButton(onTap: (){
            if(_formKey.currentState!.validate()){
              _formKey.currentState!.save();
            }else{
              autovalidateMode = AutovalidateMode.always;
              setState(() {
                
              });
            }
          },),
        ],
      ),
    );
  }
}
