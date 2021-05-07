class CustomValidators {
  static isEmail(String value) {
    // ignore: unused_local_variable
    RegExp regex =
        new RegExp(r"^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$");

    if (value.isEmpty) {
      return 'E-mail inválido';
    }
    return null;
  }
}
