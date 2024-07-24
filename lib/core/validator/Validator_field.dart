// ignore: file_n
// ignore_for_file: file_names

class ValidatorField {
  ValidatorField._();

  static String? validatorEmail(String? value) {
    final RegExp exp = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (value!.isEmpty) return "champs obligatoire";
    if (!exp.hasMatch(value)) {
      return " email non conforme, verifier votre email";
    }
    return null;
  }

  static String? validatorCodeField(String? value) {
    final RegExp rexp = RegExp("[0-9]{5}");
    if (value == null || value.isEmpty) {
      return "champ obligatoire";
    } else if (!rexp.hasMatch(value)) {
      return "merci de verifier votre code id";
    } else {
      return null;
    }
  }

  static String? validatorPasswordField(String? value) {
    if (value == null || value.isEmpty) {
      return "champ vide";
    } else if (value.length < 5) {
      return "merci de verifier votre mot de passe";
    } else {
      return null;
    }
  }
}
