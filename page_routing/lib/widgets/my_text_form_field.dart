import 'package:flutter/material.dart';

class MyTextFormField extends StatefulWidget {

  late String hintText;
  late IconData prefixIcon;
  late bool obscureText;
  late TextEditingController textController;
  late String? Function(String?)? textValidator;
  late Color errorTextColor;

  MyTextFormField(
      {required this.hintText,
      required this.prefixIcon,required this.textController,required this.textValidator,this.errorTextColor = Colors.red,
      this.obscureText = false});

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: TextFormField(
          controller: widget.textController,
          validator: widget.textValidator,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: widget.hintText,
              prefixIcon: Icon(widget.prefixIcon),
              errorStyle: TextStyle(color: widget.errorTextColor)
          ),
          obscureText: widget.obscureText,
        ));
  }
}

