import 'package:flutter/material.dart';

class LoginCheckBox extends FormField<bool> {
  LoginCheckBox({
    Key? key,
    required void Function(bool value) onChanged,
    AutovalidateMode? autovalidateMode,
    String? Function(bool?)? validator,
  }) : super(
          key: key,
          validator: validator,
          autovalidateMode: autovalidateMode,
          builder: (state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CheckboxListTile(
                  title: Text('Hello World'),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: state.value ?? false,
                  onChanged: (value) {
                    state.didChange(value);
                    if (value != null) {
                      onChanged(value);
                    }
                  },
                ),
                if (state.hasError)
                  Text(
                    state.errorText!,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
              ],
            );
          },
        );
}
