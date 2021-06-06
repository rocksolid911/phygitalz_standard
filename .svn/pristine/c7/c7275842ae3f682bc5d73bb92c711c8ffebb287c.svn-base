import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:phygitalz_standard/components/animated_textfield.dart';

//import 'package:phygitalz_standard/components/animated_textfield.dart';
class TextFieldAnimated extends StatefulWidget {
  const TextFieldAnimated({Key key}) : super(key: key);

  @override
  _TextFieldAnimatedState createState() => _TextFieldAnimatedState();
}

class _TextFieldAnimatedState extends State<TextFieldAnimated> {
  GlobalKey<FormState> _form = GlobalKey<FormState>();
  GlobalKey<FormState> _form2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("text feild"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
                    formtype: "email",
                    lebeltextemail: "Email",
                    key: _form,
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
              formtype: "phoneNo",
              lebeltextphn: "phone no",
              key: _form2,
            ),
          ),
        ],
      ),
          );



  }
}
