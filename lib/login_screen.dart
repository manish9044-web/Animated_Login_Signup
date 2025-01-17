import 'package:animate_do/animate_do.dart';
import 'package:animatedloginsignup/custom_button.dart';
import 'package:animatedloginsignup/custom_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  final VoidCallback onSignUpTap;
  const Loginscreen({Key? key, required this.onSignUpTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FD),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              FadeInDown(
                  duration: Duration(milliseconds: 500),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 16),
                          decoration: BoxDecoration(
                            color: Color(0xFF4A154B).withOpacity(0.1),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            'Welcome Back',
                            style: TextStyle(
                              // fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF4A154B),
                              letterSpacing: 1.5,
                            ),
                          )),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Login in to your\naccount",
                        style: TextStyle(
                            color: Color(0xFF1D1C1D),
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                            fontSize: 36),
                      )
                    ],
                  )),
              SizedBox(
                height: 40,
              ),
              FadeInUp(
                  duration: Duration(milliseconds: 600),
                  delay: Duration(milliseconds: 200),
                  child: Column(
                    children: [
                      CustomTextField(
                          icon: CupertinoIcons.mail,
                          hint: "Email",
                          gradientColors: [
                            Color(0xFF4A154B),
                            Color(0xFF6B1A6B),
                          ]),
                      SizedBox(
                        height: 16,
                      ),
                      CustomTextField(
                          icon: CupertinoIcons.lock,
                          hint: "Password",
                          isPassword: true,
                          gradientColors: [
                            Color(0xFF4A154B),
                            Color(0xFF6B1A6B),
                          ]),
                    ],
                  )),
              SizedBox(
                height: 26,
              ),
              FadeInUp(
                duration: Duration(milliseconds: 600),
                delay: Duration(milliseconds: 400),
                child: CustomButton(onPressed: () {}, text: 'Log In'),
              ),
              SizedBox(
                height: 24,
              ),
              FadeIn(
                  duration: Duration(milliseconds: 600),
                  delay: Duration(milliseconds: 600),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Color(0xFF1D1C1D),
                        ),
                      ),
                      GestureDetector(
                        onTap: onSignUpTap,
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Color(0xFF4A154B),
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 40,
              ),
              FadeInUp(
                  duration: Duration(milliseconds: 600),
                  delay: Duration(milliseconds: 800),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            height: 1,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                              Colors.transparent,
                              Color(0xFFE0E0E0),
                            ])),
                          )),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 16),
                            child: Text(
                              "Or continue with",
                              style: TextStyle(
                                color: Color(0xFF1D1C1D),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            height: 1,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                              Colors.transparent,
                              Color(0xFFE0E0E0),
                            ])),
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElasticIn(
                              duration: Duration(milliseconds: 800),
                              delay: Duration(milliseconds: 1000),
                              child: _buildScoialButton(
                                  icon: Icons.g_mobiledata,
                                  label: 'Google',
                                  gradientColors: [
                                    Color(0xFFDB4437),
                                    Color(0xFFF66D5B),
                                  ])),
                          ElasticIn(
                              duration: Duration(milliseconds: 800),
                              delay: Duration(milliseconds: 1200),
                              child: _buildScoialButton(
                                  icon: Icons.apple,
                                  label: 'Apple',
                                  gradientColors: [
                                    Color(0xFF000000),
                                    Color(0xFF2C2C2C),
                                  ])),
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      )),
    );
  }

  Widget _buildScoialButton(
      {required IconData icon,
      required String label,
      required List<Color> gradientColors}) {
        return Container(
          height: 55,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(colors: [
              gradientColors[0].withOpacity(0.1),
              gradientColors[1].withOpacity(0.1),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: gradientColors[0]),
              SizedBox(width: 8,),
              Text(
                label,
                style: TextStyle(color: gradientColors[0], 
                // fontSize: 16,
                fontWeight: FontWeight.w600),
              ),
            ],
          ),
        );
      }
}
