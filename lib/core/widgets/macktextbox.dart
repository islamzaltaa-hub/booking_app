// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class MackTextBox extends StatefulWidget {
  final String label;
  final IconData prefixIcon;
  final bool isPassword; // بنستخدم دي بدل obscure الخارجية
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const MackTextBox({
    super.key,
    required this.label,
    required this.prefixIcon,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.validator,
  });

  @override
  State<MackTextBox> createState() => _MackTextBoxState();
}

class _MackTextBoxState extends State<MackTextBox> {
  late bool _isObscured; // حالة الإخفاء الخاصة بالويدجيت

  @override
  void initState() {
    super.initState();
    _isObscured = widget.isPassword; // لو هو باسورد ابدأ وهو مخفي
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 5),
        TextFormField(
          controller: widget.controller,
          obscureText: _isObscured,
          keyboardType: widget.keyboardType,
          validator: widget.validator,
          decoration: InputDecoration(
            prefixIcon: Icon(
              widget.prefixIcon,
              color: const Color.fromARGB(255, 113, 113, 120),
            ),
            // لو باسورد حط زرار العين، لو مش باسورد سيبها فاضية
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      _isObscured
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured;
                      });
                    },
                  )
                : null,
            filled: true,
            fillColor: Colors.white,
            hintText: widget.label,
            hintStyle: const TextStyle(color: Colors.black54),
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
              borderSide: const BorderSide(
                color: Color(0xFF4C6FFF),
                width: 1.5,
              ),
            ),
            errorStyle: const TextStyle(color: Colors.red),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
