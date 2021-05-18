import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final void Function(String) onChanged;
  final TextInputType keyboardType;

  const CustomTextFormField(
      {Key key, this.labelText = '', this.onChanged, this.keyboardType})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
        ),
        keyboardType: keyboardType,
        onChanged: onChanged,
      ),
    );
  }
}
