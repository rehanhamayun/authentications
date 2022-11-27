import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sidechef1/Email_password/login_email.dart';
import 'package:sidechef1/Google_Sign_In/sign_in_google_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  final googleIMG =
      "https://banner2.cleanpng.com/20201008/rtv/transparent-google-suite-icon-google-icon-5f7f985ccd60e3.5687494416021975968412.jpg";
  final fbIMG =
      "https://w7.pngwing.com/pngs/94/962/png-transparent-social-media-computer-icons-facebook-inc-icon-design-social-media.png";
  final appleIMG =
      "https://static.vecteezy.com/system/resources/previews/002/520/838/original/apple-logo-black-isolated-on-transparent-background-free-vector.jpg";

  final auth = FirebaseAuth.instance;
  final gSign = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            // color: Colors.amber,
            height: 100.h,
            width: double.infinity,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Join to Us & cook \n with confidence",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Container(
              height: 40.h,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.grey),
                borderRadius: BorderRadius.circular(18),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    CupertinoIcons.mail_solid,
                    size: 14,
                  ),
                  SizedBox(width: 20.w),
                  Text(
                    "Sign up with e-mail",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //
          SizedBox(
            height: 170.h,
          ),

          Text(
            "Or use social media",
            style: GoogleFonts.poppins(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          //1
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SignInwithGoogleScreen()));
            },
            child: Container(
              height: 40.h,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.grey),
                borderRadius: BorderRadius.circular(18),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    googleIMG,
                    height: 12,
                    width: 12,
                  ),
                  SizedBox(width: 20.w),
                  Text(
                    "Sign up with Google",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //2
          SizedBox(
            height: 15.h,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 40.h,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.grey),
                borderRadius: BorderRadius.circular(18),
                color: Colors.blue,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    fbIMG,
                    height: 15,
                    width: 15,
                  ),
                  SizedBox(width: 20.w),
                  Text(
                    "Sign up with Facebook",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),

          //3
          SizedBox(
            height: 15.h,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 40.h,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.grey),
                borderRadius: BorderRadius.circular(18),
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    appleIMG,
                    height: 15,
                    width: 15,
                  ),
                  SizedBox(width: 20.w),
                  Text(
                    "Sign up with Apple",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
