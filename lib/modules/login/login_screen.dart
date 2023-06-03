import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LoginScreen extends StatefulWidget {

  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  bool togglePassword = true;

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login App")),
      body: Padding(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(fontSize: 38.0),
                    textAlign: TextAlign.center,
                  ),
                  emptyArea(height: 10.0),
                  // defaultTextForm(
                  //     controller: emailController,
                  //     label: "Email",
                  //     prefixIcon: Icon(Icons.mail)),
                  defaultTextForm(
                      controller: emailController,
                      label: "Email",
                      prefixIcon: Icons.email,
                      type: TextInputType.emailAddress,
                     ),

                  emptyArea(height: 10.0),
                  defaultTextForm(
                      controller: passwordController,
                      label: "Password",
                      prefixIcon: Icons.lock,
                      type: TextInputType.visiblePassword,
                      suffixPressed: (){
                        setState(() {
                          togglePassword = !togglePassword;
                        });
                      },
                      isPassword: togglePassword,
                      suffixIcon:
                        togglePassword ? Icons.visibility : Icons.visibility_off
                      ),
                  emptyArea(height: 10.0),
                  defaultButton(
                      radius: 10.0,
                      function: () {
                        // do the validator
                      },
                      title: "login"),
                  emptyArea(height: 10.0),
                  defaultButton(
                      radius: 10.0,
                      function: () {},
                      title: "Register",),
                  emptyArea(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                          onPressed: () {}, child: const Text("Create One"))
                    ],
                  ),
                  TextFormField(
                    onChanged: (value){

                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
