import 'package:flutter/material.dart';

TextField reuseabletextfield(String text, IconData icon, bool ispasswordtype,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: ispasswordtype,
    enableSuggestions: !ispasswordtype,
    autocorrect: !ispasswordtype,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white70,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.black.withOpacity(0.3),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType: ispasswordtype
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}
