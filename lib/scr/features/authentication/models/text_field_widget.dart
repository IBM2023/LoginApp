import 'package:flutter/material.dart';
class TextFieldWidget extends StatelessWidget {
  final String labelText ;
  final Icon? suffixIcon;
  final TextEditingController? controller;
  final VoidCallback? callback;
  final Color fbcolor = Colors.greenAccent.shade200;
  final Color ebcolor = Colors.grey.shade400;
  final TextInputType ;

  TextFieldWidget({
      required this.labelText,
      this.suffixIcon,
      this.controller,
      this.callback,
       this.TextInputType,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        keyboardType: TextInputType,
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            label: Text(labelText),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: BorderSide(width: 2,color: fbcolor)
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: BorderSide(width: 2,color: ebcolor)
            )
        ),
      ),
    );
  }
}
