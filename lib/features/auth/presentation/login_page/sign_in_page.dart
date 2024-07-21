import 'package:flutter/material.dart';
import 'package:items_app/core/constant/palette_color.dart';
import 'package:items_app/features/onBoarding_page/components/logo_item_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          padding: const EdgeInsets.only(left: 15, right: 10),
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
                      Text(
                        "Bienvenue A\nIteam-Student",
                        style:
                            Theme.of(context).textTheme.displayMedium?.copyWith(
                                  letterSpacing: 0.8,
                                  color: primaryDarkColor,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Se connecter pour accéder à votre compte.",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              letterSpacing: 0.8,
                              color: primaryDarkColor.withOpacity(
                                0.6,
                              ),
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: TextFormField(
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
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: TextFormField(
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            labelText: "Mot de passe",
                            hintText: "Entrez votre mot de passe ...",
                            suffixIcon: const Icon(
                              Icons.visibility_off_outlined,
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
                          obscureText: true,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "Oublié le mot de passe ?",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                      color: primaryColor,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Center(
                        child: MaterialButton(
                          onPressed: () {},
                          elevation: 10,
                          color: primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                          ),
                          minWidth: size.width * 0.8,
                          child: Text(
                            "Se Connecter",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ),
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
