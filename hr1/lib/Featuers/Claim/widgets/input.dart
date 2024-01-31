import 'package:flutter/material.dart';
import 'package:hr1/Utility/CommonColors.dart';

class input extends StatelessWidget {
  const input({
    super.key,
    required this.hint,
    this.mintext = 1,
    this.suffux = null,
    this.isDissabled = false,
  });
  final String hint;
  final int mintext;
  final Icon? suffux;
  final bool isDissabled;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: mintext,
      maxLines: mintext,
      
      decoration: InputDecoration(
        enabled: isDissabled,
        suffixIcon: suffux,
        filled: true,
        fillColor: Colors.white,
        hintText: hint,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(width: 1, color: bordercolor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(width: 1, color: bordercolor),
        ),
      ),
    );
  }
}
