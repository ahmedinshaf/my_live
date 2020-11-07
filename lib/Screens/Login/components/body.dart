import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/live_stream/go_live/profile_first.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/firebaseDB/auth.dart';
import 'package:flutter_auth/grid_view/categories.dart';
import 'package:flutter_auth/grid_view/categories.dart';
import 'package:flutter_auth/profile/user_profile.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  String email;
  String password;


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Text(
              //   "LOGIN",
              //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.00),
              // ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: "Your Email",
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              RoundedPasswordField(
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
              RoundedButton(
                text: "LOGIN",
                press: () async {
                  try {
                    var response = await loginFirebase(this.email, this.password);
                    if(response == 1){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ProfileFirst();
                          },
                    ),
                  );
                    }

                  }catch(err){
                    print(err.toString());
                  }
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                      builder: (context) {
//                        return UserProile();
//                      },
//                    ),
//                  );
                },
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                "Forgot Password ?  ",
                style: TextStyle(color: kPrimaryColor),
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
