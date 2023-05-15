import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes2_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes2_app/models/note_model.dart';
import 'package:intl/intl.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

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
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          SizedBox(height: 20),
          CustomTextFormField(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
          SizedBox(height: 40),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                iconIsLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    var currentDate = DateTime.now();
                    var formattedCurrentDate =
                    DateFormat('dd-mm-yyyy').format(currentDate);

                    var noteModel = NoteModel(
                      title!,
                      subTitle!,
                      formattedCurrentDate,
                      Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
