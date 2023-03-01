import 'package:flutter/material.dart';
import 'package:foodpanda_sellers_app/widgets/custom_text_field.dart';
import 'package:velocity_x/velocity_x.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          16.heightBox,
          Image.asset(
            "assets/images/seller.png",
            height: 200,
          ).p(25),
          Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextField(
                  controller: emailController,
                  iconData: Icons.email_outlined,
                  hintText: "Email",
                ),
                CustomTextField(
                  controller: passwordController,
                  iconData: Icons.lock_outlined,
                  hintText: "Password",
                  isObsecure: true,
                ),
              ],
            ),
          ),
          30.heightBox,
          ElevatedButton(
            onPressed: () => {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 10)),
            child: const Text(
              "Sign In",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          16.heightBox,
        ],
      ),
    );
  }
}
