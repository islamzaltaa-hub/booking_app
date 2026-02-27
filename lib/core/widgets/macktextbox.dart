import 'package:flutter/material.dart';

Widget macktextbox({
  required String label,
  required IconData prefixIcon,
  IconData? suffixIcon,
  bool obscure = false,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 5),
      TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            color: const Color.fromARGB(255, 113, 113, 120),
          ),
          suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
          filled: true,
          fillColor: Colors.white.withOpacity(0.2),
          hintText: label,
          hintStyle: TextStyle(color: Colors.black54),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.blue, width: 1.5),
          ),
        ),
      ),
      SizedBox(height: 10),
    ],
  );
}
