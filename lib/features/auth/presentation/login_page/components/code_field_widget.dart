import 'package:flutter/material.dart';
import 'package:items_app/core/validator/Validator_field.dart';

class CodeFormFieldWidget extends StatelessWidget {
  const CodeFormFieldWidget({
    super.key,
    required this.form,
    required this.passwordField,
    required this.codeField,
    required this.codeController,
  });

  final GlobalKey<FormState> form;
  final FocusNode passwordField;
  final FocusNode codeField;
  final TextEditingController codeController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: codeController,
      onTap: () {
        form.currentState?.reset();
      },
      validator: ValidatorField.validatorCodeField,
      onEditingComplete: () {
        FocusScope.of(context).requestFocus(passwordField);
      },
      focusNode: codeField,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        labelText: "Code etudiant",
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
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
    );
  }
}
