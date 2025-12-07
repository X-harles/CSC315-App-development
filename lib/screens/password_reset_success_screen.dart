import "package:flutter/material.dart";
import "package:login_ui/constants/app_colors.dart";
import "package:login_ui/screens/login_screen.dart";

class PasswordResetSuccess extends StatefulWidget {
  const PasswordResetSuccess({super.key});

  @override
  State<PasswordResetSuccess> createState() => _PasswordResetSuccessState();
}

class _PasswordResetSuccessState extends State<PasswordResetSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightYellow,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Password reset link sent successfully!",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkest,
                  letterSpacing: -0.5,
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8,),
              Text(
                "Check your email! We've sent a reset link to your inbox.",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.dark,
                  letterSpacing: -0.5,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16,),
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
            ],
          ),
        ),
      )
    );
  }
}
