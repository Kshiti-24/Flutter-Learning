import 'package:first/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Hello,Welcome",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                      child: Text("Login"),
                    style: TextButton.styleFrom(minimumSize: Size(150, 50)  ),
                    onPressed: () {
                     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
