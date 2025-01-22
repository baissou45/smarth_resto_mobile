import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smarth_save/PlaidLogin.dart';
import 'package:smarth_save/outils/navigation.dart';
import 'package:smarth_save/screen/Athantification/sig_up.dart';
import 'package:smarth_save/screen/widget/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  var nameController = TextEditingController();
  var userNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    double longeur = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Center(
            child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 0, 175, 161),
      ),
      margin: const EdgeInsets.only(top: 70, left: 10, right: 10, bottom: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: longeur / 10.0, horizontal: largeur / 25.0),
              child: Form(
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Connexion',
                        style: GoogleFonts.poppins(
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(height: longeur / 5.0),
                    SVTextField(
                      controller: userNameController,
                      hint: 'Nom d\'utilisateur',
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(height: 20),
                    SVTextField(
                      controller: passwordController,
                      hint: 'Mot de passe',
                      keyboardType: TextInputType.name,
                      obscureText: true,
                    ),
                    SizedBox(height: longeur / 15.0),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      TextButton(
                        onPressed: () {
                          navigationTonextPage(context, const PlaidLogin());
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                              const Color.fromARGB(255, 15, 45, 179)),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                          padding: WidgetStateProperty.all(
                              const EdgeInsets.symmetric(horizontal: 30)),
                        ),
                        child: const Text("Connexion",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            )),
                      ),
                    ])
                  ],
                ),
              ),
            ),
            SizedBox(height: longeur / 50.0),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('Vous n\'avez pas de compte ?',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 11,
                  )),
              TextButton(
                onPressed: () {
                  navigationTonextPage(context, SigUpPage());
                },
                child: Text('Inscrivez-vous',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600)),
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                  width: 100,
                  height: 3,
                  child: Container(
                    color: Colors.white,
                  )),
              const SizedBox(width: 20),
              const SizedBox(
                child: Text("ou",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
              const SizedBox(width: 20),
              SizedBox(
                  width: 100,
                  height: 3,
                  child: Container(
                    color: Colors.white,
                  )),
            ]),
            const SizedBox(height: 15),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
                child: TextButton(
                  onPressed: () {
                    navigationTonextPage(context, const PlaidLogin());
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
                  child: Image.asset("assets/images/googleBtn.png",
                      width: 40, height: 40),
                ),
              ),
            ]),
            SizedBox(height: longeur / 10.0),
          ],
        ),
      ),
    )));
  }
}
