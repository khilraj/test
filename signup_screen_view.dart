import 'package:first_app/app/routes/app_routes.dart';
import 'package:first_app/view/components/my_button.dart';
import 'package:first_app/view/components/my_textfield.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  // text editing controllers
  final usernameController= TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const SizedBox(height: 10),
          
                // logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
          
                const SizedBox(height: 30),
          
                // welcome back, you've been missed!
                Text(
                  'Welcome back',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 22,
                  ),
                ),
                const Text(
                   'you\'ve been missed!',
                   style: TextStyle(
                    color: Colors.black,
                   ),
                ),
          
                const SizedBox(height: 35),
          
                // username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),
          
                const SizedBox(height: 10),
          
                // password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // Confirm password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Confirm Password',
                  obscureText: true,
                ),
          
                // const SizedBox(height: 10),
          
                // // forgot password?
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       Text(
                //         'Forgot Password?',
                //         style: TextStyle(color: Colors.grey[600]),
                //       ),
                //     ],
                //   ),
                // ),
          
                const SizedBox(height: 25),
          
                // sign in button
                MyButton(
                  onTap: signUserIn,
                ),
          
          
                const SizedBox(height: 20),
          
                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(color: Colors.grey[700], fontSize: 16),
                    ),

                    const SizedBox(width: 4),

                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context, 
                          AppRoute.loginRoute
                        );
                      },
                      child: const Text(
                        'Login now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}