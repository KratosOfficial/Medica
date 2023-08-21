import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medica/src/screens/Auth/SignIn/forget%20Password.dart';
import 'package:medica/src/screens/Auth/SignUp/Signup.dart';
import 'package:medica/src/screens/Dashboard_Screen/Dashboard.dart';
import 'package:medica/src/utils/HelperClass.dart';

import '../../../contant/image_String.dart';
import '../../../contant/text_String.dart';

class signIn extends StatefulWidget {
  const signIn({super.key});

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  FocusNode _passwordFocus = FocusNode();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Center(
                child: SvgPicture.asset(
              kmedicalogo,
              color: Color(0xff3375fe),
              height: 200,
            )),
            Spacer(),
            Center(
              child: Text(
                login,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600, fontSize: 30),
              ),
            ),
            Spacer(),
            SizedBox(height: 30.0),
            Center(
              child: TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SvgPicture.asset(
                      kboldmail,
                      color: Colors.grey,
                    ),
                  ),
                  hintText: 'Email',
                  hintStyle: GoogleFonts.poppins(color: Colors.grey),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xff3375fe)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Center(
              child: TextField(
                controller: _passwordController,
                obscureText: !_isPasswordVisible,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SvgPicture.asset(
                      kboldpassword,
                      color: Colors.grey,
                    ),
                  ),
                  hintText: 'Password',
                  hintStyle: GoogleFonts.poppins(color: Colors.grey),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xff3375fe)),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(_isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                ),
                focusNode: _passwordFocus,
              ),
            ),
            Spacer(),
            SizedBox(
              height: 0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                Text(
                  "Remember me",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => dashboard()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Color(0xff2763c0),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "Sign in",
                    style: GoogleFonts.poppins(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
            Spacer(),
            SizedBox(
              height: 10,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: ForgetPasswordPage(),
                      );
                    },
                  );
                },
                child: Text(
                  "Forget the password?",
                  style: GoogleFonts.poppins(
                      color: Color(0xff3375fe),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "or continue with",
                style: GoogleFonts.poppins(
                    color: Colors.grey[600],
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildcontainer(kfacebooklogo),
                buildcontainer(kgooglelogo),
                buildcontainer(kapplelogo),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signUp()));
                },
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Don't have an account? ",
                    style: GoogleFonts.poppins(color: Colors.grey),
                  ),
                  TextSpan(
                    text: "Sign up",
                    style: GoogleFonts.poppins(
                        color: Color(
                          0xff3375fe,
                        ),
                        fontWeight: FontWeight.w500),
                  ),
                ])),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildcontainer(String image) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey, width: 0.5)),
      child: Image.asset(
        image,
        height: 30,
      ),
    );
  }
}
