import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:items_app/core/components/button_widget.dart';
import 'package:items_app/core/constant/palette_color.dart';
import 'package:items_app/core/validator/Validator_field.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  late TextEditingController controller;
  GlobalKey<FormState> form = GlobalKey<FormState>();

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          iconSize: 20,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Réinitialiser Mot de Passe",
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 15.0, right: 15.0),
          child: ListView(
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Text(
                "Saisissez l'adresse électronique associée à votre compte et nous vous enverrons un mail de vérification.",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.black87,
                    ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Form(
                key: form,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: controller,
                    onTap: () {
                      form.currentState!.reset();
                    },
                    validator: ValidatorField.validatorEmail,
                    onEditingComplete: () {
                      FocusScope.of(context).unfocus();
                      form.currentState!.validate();
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      labelText: "Email",
                      hintText: "Entrez votre address Email...",
                      suffixIcon: const Icon(
                        Icons.email_outlined,
                        color: Colors.black45,
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
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              ButtonWidget(
                title: "Envoyer",
                onPressed: () {
                  if (form.currentState!.validate()) {}
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
