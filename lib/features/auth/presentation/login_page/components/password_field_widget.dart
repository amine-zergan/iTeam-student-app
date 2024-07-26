import 'package:flutter/material.dart';
import 'package:items_app/core/validator/Validator_field.dart';

class PasswordFieldWidget extends StatelessWidget {
  const PasswordFieldWidget({
    super.key,
    required this.passwordField,
    required this.isOscure,
    this.onPressed,
    required this.controller,
  });

  final FocusNode passwordField;
  final bool isOscure;
  final void Function()? onPressed;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscuringCharacter: "*",
      controller: controller,
      focusNode: passwordField,
      validator: ValidatorField.validatorPasswordField,
      onEditingComplete: () {
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        labelText: "Mot de passe",
        hintText: "Entrez votre mot de passe ...",
        suffixIcon: IconButton(
          onPressed: onPressed,
          icon: Icon(
            isOscure ? Icons.visibility_off_outlined : Icons.visibility,
            color: Colors.black45,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade50,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade50,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade50,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade50,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: Colors.white,
        filled: true,
      ),
      obscureText: isOscure,
    );
  }
}
