import 'package:chef2/model/user_info.dart';
import 'package:chef2/service/service.dart';
import 'package:chef2/view/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LogInPage extends StatelessWidget {
  LogInPage({super.key});
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool passwordObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Container(
            width: 500,
            height: 230,
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage("images/background_image 1.jpg"))),
            child: Padding(
              padding: const EdgeInsets.only(left: 80, top: 70),
              child: Text(
                "Welcome Back",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                  hintText: "email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              obscureText: passwordObscured,
              controller: password,
              decoration: InputDecoration(
                  hintText: "password",
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState() {
                          passwordObscured = !passwordObscured;
                        }
                      },
                      icon: Icon(Icons.visibility_off_outlined)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text(
              "forget password ?",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          InkWell(
            onTap: () async{
              bool status =
                 await LogIn(UserInfo(email: email.text, password: password.text)) ==
                      true;
              if (status == true) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Success"),
                  backgroundColor: Colors.green,
                ));
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Menu(),
                    ));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Failed"),
                  backgroundColor: Colors.red,
                ));
              }
            },
            child: Container(
              height: 48,
              width: 327,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.orange),
              child: Center(
                  child: Text(
                "Sign in",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              )),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have an account?",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.blueGrey),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.orange),
              )
            ],
          )
        ],
      ),
    ));
  }
}
