import "package:flutter/material.dart";
import "package:login_ui/constants/app_colors.dart";
import "package:login_ui/screens/reset_password_screen.dart";
import "package:login_ui/screens/signup_screen.dart";

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightYellow,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/hiker_illustration.png',
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Welcome back",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: AppColors.darkest,
                            letterSpacing: -0.5,
                            height: 1
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Center(
                        child: Text(
                          'Your next affordable adventure awaits',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.dark,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 32,),
                      // EMAIL INPUT
                      Text(
                        "Email",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.darkest,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.lightest,
                          hintText: 'traveller@example.com',
                          hintStyle: TextStyle(color: AppColors.medium),
                          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: AppColors.light),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: AppColors.medium, width: 2),
                          ),
                        ),
                      ),
                      SizedBox(height: 16,),
                      // PASSWORD INPUT
                      Text(
                        "Password",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.darkest,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.lightest,
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(color: AppColors.medium),
                          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: AppColors.light),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: AppColors.medium, width: 2),
                          ),
                        ),
                      ),
                      SizedBox(height: 16,),
                      // FORGOT PASSWORD
                      Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => ResetPassword()),
                            );
                          },
                          child: Text(
                            "Forgot your password?",
                            style: TextStyle(
                              color: AppColors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.primary,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      // LOGIN BUTTON
                      SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.darkest,
                            foregroundColor: AppColors.lightYellow,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Text(
                            "Log into your account",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      // FOOTER
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "New to Garbanzo? ",
                            style: TextStyle(
                              color: AppColors.dark,
                              fontSize: 14,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => Signup()),
                              );
                            },
                            child: Text(
                              "Create an account",
                              style: TextStyle(
                                color: AppColors.primary,
                                decoration: TextDecoration.underline,
                                decorationColor: AppColors.primary,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}

