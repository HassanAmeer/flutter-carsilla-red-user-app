import '../../res/assets.dart';
import 'package:flutter/material.dart';
import '../../res/theme.dart';
import '../../widgets/btn.dart';
import '../../widgets/textfeild.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const Text('')),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome Back !',
                style: textTheme.headlineLarge!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02 / 1),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.65 / 1,
                child: Text(
                  'Stay signed in with your account to make searching easier',
                  style: textTheme.titleLarge!
                      .copyWith(color: Colors.grey.shade800),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04 / 1),
              const Padding(
                padding: EdgeInsets.only(bottom: 7.0),
                child: Row(
                  children: [Text('Email or Phone Number')],
                ),
              ),
              const CustomTextFormField(
                hintText: 'Enter Your Email Or Phone Number',
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02 / 1),
              const Padding(
                padding: EdgeInsets.only(bottom: 7.0),
                child: Row(
                  children: [Text('Password')],
                ),
              ),
              CustomTextFormField(
                hintText: 'Enter your password',
                suffix: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.visibility_off_outlined)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02 / 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        color: Colors.grey.shade300,
                      ),
                      const SizedBox(width: 5),
                      const Opacity(
                        opacity: 0.6,
                        child: Text(
                          "Keep me Signed in",
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      "Forgot Password?",
                      style: textTheme.titleLarge!.copyWith(
                          color: MainTheme.primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03 / 1),
              MainButton(
                width: 0.87,
                onclick: () {
                  Navigator.pushNamed(context, "/HomePage");
                },
                label: 'Sign In',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02 / 1,
              ),
              Stack(
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: Divider(
                      thickness: 1,
                      height: 30,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          color: Colors.white,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5),
                            child: Text('or'),
                          )))
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03 / 1),
              Container(
                  width: MediaQuery.of(context).size.width * 0.86 / 1,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.08 / 1,
                          child: Image.asset(IconAssets.google)),
                      const Text('Continue With Google')
                    ],
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02 / 1),
              Container(
                  width: MediaQuery.of(context).size.width * 0.86 / 1,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.08 / 1,
                          child: Image.asset(IconAssets.facebook)),
                      const Text('Continue With Facebook')
                    ],
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04 / 1),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/SignUpPage');
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don’t Have an Account?",
                          style: textTheme.labelMedium!
                              .copyWith(color: Colors.grey.shade700),
                        ),
                        const TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "Sign Up",
                          style: textTheme.labelMedium!.copyWith(
                              color: MainTheme.primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
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