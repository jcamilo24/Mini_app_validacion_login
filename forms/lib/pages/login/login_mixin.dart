mixin LoginMixin {
  String? emailValidator(String? text) {
    text = text ?? '';
    final isValid = RegExp(
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?",
    ).hasMatch(text);

    if (isValid) {
      return null;
    }
    return 'Invalid Name';
  }

  String? passwordValidator(String? text) {
    text = text ?? '';
    text = text.replaceAll(' ', '');
    if (text.length >= 8) {
      return null;
    }
    return 'Invalid Password';
  }
}
