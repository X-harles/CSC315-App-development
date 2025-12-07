import "package:flutter/material.dart";
import "package:login_ui/screens/login_screen.dart";
import "package:login_ui/screens/password_reset_success_screen.dart";
import "../constants/app_colors.dart";

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                  "assets/images/forgot_password_illustration.png",
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 32,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Reset password",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: AppColors.darkest,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Center(
                        child: Text(
                          'Enter the email associated with your account and we’ll send you a link to reset your password.',
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
                      // LOGIN BUTTON
                      SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => PasswordResetSuccess()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.darkest,
                            foregroundColor: AppColors.lightYellow,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Text(
                            "Send reset link",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: Text(
                            "Back to login",
                            style: TextStyle(
                              color: AppColors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.primary,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                )
              ],
            )
          )
      ),
    );
  }
}
