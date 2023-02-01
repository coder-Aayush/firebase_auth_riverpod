import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.errorMessage,
      this.isPassword = false,
      required this.onChanged})
      : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final String? errorMessage;
  final bool isPassword;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          obscureText: isPassword,
          onChanged: onChanged,
          controller: controller,
          decoration: InputDecoration(hintText: hintText),
        ),
        const SizedBox(height: 8),
        if (errorMessage != null && errorMessage!.isNotEmpty)
          Text(
            errorMessage!,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 12,
            ),
          ),
      ],
    );
  }
}
