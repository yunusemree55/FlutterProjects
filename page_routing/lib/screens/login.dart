import 'package:flutter/material.dart';
import 'package:page_routing/screens/home.dart';
import 'package:page_routing/widgets/my_text_form_field.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 350, child: Image.asset("lib/images/login.png")),
              Form(
                  key: loginKey,
                  child: Column(
                    children: [
                      MyTextFormField(
                        hintText: "Email",
                        prefixIcon: Icons.email,
                        textController: email,
                        textValidator: checkEmail,
                        errorTextColor: Colors.white,
                      ),
                      MyTextFormField(
                        hintText: "Password",
                        prefixIcon: Icons.lock,
                        obscureText: true,
                        textController: password,
                        textValidator: checkPassword,
                        errorTextColor: Colors.white,
                      )
                    ],
                  )),
              ElevatedButton(
                  onPressed: () => {
                        if (loginKey.currentState!.validate())
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => HomePage(email: email.text))
                          )
                      },
                  child: Text("Login"))

            ],
          ),
        ),
      ),
    );
  }
}

String? checkEmail(String? email) {
  if (email == null || email.isEmpty) {
    return "Email field cannot be empty";
  }
  return null;
}

String? checkPassword(String? password) {
  if (password == null || password.isEmpty) {
    return "Password field cannot be empty";
  }
  return null;
}
