import 'package:flutter/material.dart';

Widget getTextField(
    {required String hint,
    double hintOpacity = 1.0,
    Icon? prefixIcon,
    IconButton? suffixIcon}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child: Container(
      height: 56,
      width: 350,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.transparent)),
          contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 20.5),
          filled: true,
          fillColor: Colors.white,
          hintText: hint,
          hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.50)),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    ),
  );
}
