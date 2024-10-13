class Validator{
  Validator._();
  static String? validateName(String? value) {
    final condition = RegExp(r"((\ *)[\wáéíóúñ]+(\ *)+)+");
    if(value != null && value.isEmpty) {
      return "This field cannot be empty";
    }else if (value != null && !condition.hasMatch(value)) {
      return "Invaild name";
    }
    return null;
  }
  static String? validateEmail(String? value) {
    final condition = RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");
    if(value != null && value.isEmpty) {
      return "Enter a valid email";
    }else if (value != null && !condition.hasMatch(value)) {
      return "Invaild email";
    }
    return null;
  }
  static String? validatePassword(String? value) {
    final condition = RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$");
    if(value != null && value.isEmpty) {
      return "Enter a valid password";
    }else if (value != null && !condition.hasMatch(value)) {
      return "Invaild password";
    }
    return null;
  }
  static String? validateConfirmPassword(String? first, String? second) {
    if (first != second) {
      return "Passwords are different";
    }
    return null;
  }
}