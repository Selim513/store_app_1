import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      this.onchange,
      this.labelText,
      this.validator,
      this.suffixIcon,
      this.unVisible = false,
      this.controller,
      this.inputType});
  final String? labelText;
  final String? Function(String? value)? validator;
  final bool unVisible;
  final Widget? suffixIcon;
  final TextInputType? inputType;
final TextEditingController? controller;
  final void Function(dynamic data)? onchange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: unVisible,
      cursorColor: Colors.blue,
      validator: validator,
      onChanged: onchange,
      controller: controller,
      decoration: InputDecoration(
        
          suffixIcon: suffixIcon,
          errorStyle: const TextStyle(color: Colors.red),
          contentPadding: const EdgeInsets.all(20),
          labelText: labelText,
          labelStyle: const TextStyle(fontWeight: FontWeight.w500),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(color: Colors.blue, width: 2)),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(color: Colors.grey, width: 2)),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(color: Colors.grey, width: 2)),
          errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(color: Colors.red, width: 2)),
          focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(color: Colors.red, width: 2))),
    );
  }
}
