import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:phygitalz_standard/ui/textField.dart';

class CustomTextField extends StatefulWidget {
  //final List<GlobalKey> globalkey= [];
  final String formtype;
  final String lebeltextemail;
  final String lebeltextphn;

  CustomTextField(
      {Key key, this.formtype, this.lebeltextemail, this.lebeltextphn})
      : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  GlobalKey<FormState> _form = GlobalKey<FormState>();

  get formtype => widget.formtype;

  // void _validate() {
  //   _form.currentState.validate();
  // }

  @override
  Widget build(BuildContext context) {
    return formfunction();
  }

  TextFormField emailTextFormField() => TextFormField(
        autovalidateMode: AutovalidateMode.always, key: _form,
        // onEditingComplete: _validate,
        // key: _form,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.chevron_left_outlined,
            color: Colors.white54,
          ),
          // labelStyle: TextStyle(leadingDistribution: TextLeadingDistribution.even),
          labelText: "${widget.lebeltextemail}",
          fillColor: Colors.white,
          alignLabelWithHint: true,
          errorBorder: OutlineInputBorder(
            gapPadding: 3,
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            gapPadding: 3,
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: Colors.blueAccent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 3,
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: Colors.blueAccent,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            gapPadding: 3,
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: Colors.blueAccent,
            ),
          ),
          border: OutlineInputBorder(
            gapPadding: 3,
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: Colors.blueAccent
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            gapPadding: 3,
            borderRadius: BorderRadius.circular(60.0),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          //fillColor: Colors.green
        ),

        validator: ValidationBuilder().email().maxLength(30).build(),
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          fontFamily: "Poppins",
        ),
        autofocus: true,
      );
  TextFormField phoneTextFormField() => TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction, key: _form,
        // onEditingComplete: _validate,
        // key: _form,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.chevron_left_outlined,
            color: Colors.white54,
          ),
          // labelStyle: TextStyle(leadingDistribution: TextLeadingDistribution.even),
          labelText: "${widget.lebeltextphn}",
          //labelStyle: TextStyle(color: Colors.blueAcc),
          fillColor: Colors.white,
          alignLabelWithHint: true,
          errorBorder: OutlineInputBorder(
            gapPadding: 3,
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Colors.blueAccent),
          ),
          enabledBorder: OutlineInputBorder(
            gapPadding: 3,
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: Colors.blueAccent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 3,
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Colors.blueAccent),
          ),
          disabledBorder: OutlineInputBorder(
            gapPadding: 3,
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Colors.blueAccent),
          ),
          border: OutlineInputBorder(
            gapPadding: 3,
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: Colors.blueAccent,

            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            gapPadding: 3,
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          //fillColor: Colors.green
        ),


        validator: ValidationBuilder().phone("plz enter a valid phone no").maxLength(30).build(),
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontFamily: "Poppins",
        ),
        autofocus: true,
      );

  TextFormField formfunction() {

    String value = widget.formtype;
    if (value == "email") {
      return emailTextFormField();
    } else if (value == "phoneNo") {
      return phoneTextFormField();
    }
  }
}
