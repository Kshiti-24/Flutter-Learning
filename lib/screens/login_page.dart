import 'package:login/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/utils/constants.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      // child: Center(
      //   child: Text("Login Page",style:TextStyle(
      //     fontSize: 20,
      //     color: Colors.blue,
      // // fontWeight: FontWeight.bold,
      //    ),
      //   )
      // ),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assests/images/login_page.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: kLabelStyle,
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: kBoxDecorationStyle,
                      height: 55,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'OpenSans'),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsetsDirectional.only(top: 16),
                          prefixIcon: Icon(Icons.email, color: Colors.white),
                          hintText: 'Enter your Email',
                          hintStyle: kHintTextStyle,
                        ),
                      ),
                    ),
                    Text(
                      'Password',
                      style: kLabelStyle,
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: kBoxDecorationStyle,
                      height: 55,
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsetsDirectional.only(top: 16),
                          prefixIcon: Icon(Icons.lock, color: Colors.white),
                          hintText: 'Enter your Password',
                          hintStyle: kHintTextStyle,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(
                          changeButton ? 50 : 0),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                              : Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}