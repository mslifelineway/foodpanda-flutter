import 'dart:io';

import 'package:flutter/material.dart';
import 'package:foodpanda_sellers_app/widgets/custom_text_field.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velocity_x/velocity_x.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  XFile? imageXFile;
  final ImagePicker _picker = ImagePicker();

  Future<void> _getImage() async {
    imageXFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      imageXFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          16.heightBox,
          InkWell(
            onTap: () {
              _getImage();
            },
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.20,
              backgroundColor: Colors.white,
              backgroundImage:
                  imageXFile == null ? null : FileImage(File(imageXFile!.path)),
              child: imageXFile == null
                  ? Icon(Icons.add_photo_alternate_outlined,
                      size: MediaQuery.of(context).size.width * 0.20,
                      color: Colors.grey)
                  : null,
            ),
          ),
          16.heightBox,
          Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextField(
                  controller: nameController,
                  iconData: Icons.person,
                  hintText: "Name",
                ),
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
                CustomTextField(
                  controller: confirmPasswordController,
                  iconData: Icons.lock_outlined,
                  hintText: "Confirm Password",
                  isObsecure: true,
                ),
                CustomTextField(
                  controller: phoneController,
                  iconData: Icons.phone_android_outlined,
                  hintText: "Phone",
                ),
                CustomTextField(
                  controller: locationController,
                  iconData: Icons.my_location_outlined,
                  hintText: "Cafe/Restaurant Location",
                  enabled: false,
                ),
                Container(
                  width: 400,
                  height: 40,
                  alignment: Alignment.center,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    label: const Text(
                      "Get my current location",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
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
              "Sign Up",
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
