import 'package:flutter/material.dart';
import 'package:items_app/features/auth/presentation/login_page/components/code_field_widget.dart';
import 'package:items_app/core/components/button_widget.dart';
import 'package:items_app/features/auth/presentation/login_page/components/forget_password_widget.dart';
import 'package:items_app/features/auth/presentation/login_page/components/password_field_widget.dart';
import 'package:items_app/features/auth/presentation/login_page/components/welcome_text_widget.dart';
import 'package:items_app/features/auth/presentation/login_page/sign_in_page.dart';
import 'package:items_app/features/onBoard/components/logo_item_widget.dart';

class BodySignIn extends StatefulWidget {
  const BodySignIn({super.key});

  @override
  State<BodySignIn> createState() => _BodySignInState();
}

class _BodySignInState extends State<BodySignIn> {
  GlobalKey<FormState> form = GlobalKey<FormState>();
  late TextEditingController codeFieldController;
  late TextEditingController passwordFieldController;
  late FocusNode codeField;
  late FocusNode passwordField;
  bool isOscure = true;
  @override
  void initState() {
    codeFieldController = TextEditingController();
    passwordFieldController = TextEditingController();
    codeField = FocusNode();
    passwordField = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    codeField.dispose();
    passwordField.dispose();
    codeFieldController.dispose();
    passwordFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.only(left: 15, right: 10),
        child: Form(
          key: form,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LogoIteamsWidget(),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const WelcomeTextWidget(),
                      const SizedBox(
                        height: 20,
                      ),
                      const AccessAccountWidget(),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: CodeFormFieldWidget(
                          form: form,
                          passwordField: passwordField,
                          codeField: codeField,
                          codeController: codeFieldController,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: PasswordFieldWidget(
                          passwordField: passwordField,
                          controller: passwordFieldController,
                          isOscure: isOscure,
                          onPressed: () {
                            setState(() {
                              isOscure = !isOscure;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const ForgetPasswordWidget(),
                      SizedBox(
                        height: size.height * 0.16,
                      ),
                      ButtonWidget(
                        title: "Se Connecter",
                        onPressed: () {
                          if (form.currentState!.validate()) {}
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
