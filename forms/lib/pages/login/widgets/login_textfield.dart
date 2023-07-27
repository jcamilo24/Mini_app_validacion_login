import 'package:flutter/material.dart';

class LoginTextField extends FormField<String> {
  LoginTextField({
    Key? key,
    TextInputAction? textInputAction,
    required String label,
    TextInputType? keyboardType,
    bool obscureText = false,
    void Function(String)? onChanged,
    void Function(String)? onSubmitted,
    String? Function(String?)? validator,
    AutovalidateMode? autovalidateMode,
  }) : super(
          validator: validator,
          autovalidateMode: AutovalidateMode.always,
          key: key,
          builder: (state) {
            bool isOk = !state.hasError &&
                state.value != null &&
                state.value!.isNotEmpty;
            return TextField(
              onSubmitted: onSubmitted,
              textInputAction: textInputAction,
              obscureText: obscureText,
              keyboardType: keyboardType,
              onChanged: (text) {
                state.didChange(text);
                if (onChanged != null) {
                  onChanged(text);
                }
              },
              decoration: InputDecoration(
                label: Text(label),
                suffixIcon: Icon(
                  Icons.check_circle,
                  color: isOk ? Colors.green : Colors.black12,
                ),
              ),
            );
          },
        );
}
