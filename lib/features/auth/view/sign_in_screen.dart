import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter_clone/constants/constants.dart';

class SignInScreen extends HookWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          AssetsConstants.twitterLogo,
          colorFilter: const ColorFilter.mode(Colors.blue, BlendMode.srcIn),
          height: 30,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: emailController,
                    focusNode: FocusNode(),
                    cursorColor: Colors.blue,
                    decoration: const InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        labelStyle: TextStyle(color: Colors.grey),
                        enabled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue))),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    controller: passwordController,
                    cursorColor: Colors.blue,
                    obscureText: true,
                    focusNode: FocusNode(),
                    decoration: const InputDecoration(
                        hintText: 'Enter your password',
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.grey),
                        enabled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue))),
                  ),
                  const SizedBox(height: 30),
                  Align(
                      alignment: Alignment.centerRight,
                      child: FilledButton(
                          onPressed: () {}, child: const Text('Done'))),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account '),
                      const SizedBox(width: 5),
                      TextButton(onPressed: () {}, child: const Text('Sign Up'))
                    ],
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
