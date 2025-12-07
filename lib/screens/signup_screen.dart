import "package:flutter/material.dart";
import "package:login_ui/constants/app_colors.dart";
import "package:login_ui/screens/login_screen.dart";

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // State variable to manage checkbox status
  bool isAgreed = false;

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
                          "Start your journey",
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
                          'Join our community of budget-savvy explorers finding authentic local experiences.',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.dark,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 32,),
                      // FULL NAME INPUT
                      Text(
                        "Full name",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.darkest,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8,),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.lightest,
                          hintText: 'e.g. Alex Smith',
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
                          hintText: 'Minimum 8 characters',
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
                      // TERMS & CONDITIONS CHECKBOX
                      Row(
                        children: [
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Checkbox(
                              value: isAgreed,
                              activeColor: AppColors.primary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              onChanged: (bool? value) {
                                setState(() {
                                  isAgreed = value ?? false;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 8),
                          // Using RichText for clickable links in a single line
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  color: AppColors.dark,
                                  fontSize: 14,
                                ),
                                children: [
                                  const TextSpan(text: 'I agree to the '),
                                  TextSpan(
                                    text: 'Terms of Service',
                                    style: const TextStyle(
                                      color: AppColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: AppColors.primary,
                                    ),
                                  ),
                                  const TextSpan(text: ' and '),
                                  TextSpan(
                                    text: 'Privacy Policy',
                                    style: const TextStyle(
                                      color: AppColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: AppColors.primary,
                                    ),
                                  ),
                                  const TextSpan(text: '.'),
                                ],
                              ),
                            ),
                          ),
                        ],
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
                            "Create your Garbanzo account",
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
                            "Already have an account? ",
                            style: TextStyle(
                              color: AppColors.dark,
                              fontSize: 14,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => Login()),
                              );
                            },
                            child: Text(
                              "Log in",
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
