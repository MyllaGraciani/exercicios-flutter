import 'package:flutter/material.dart';
// import 'package:shopping/pages/home.page.dart';
import 'package:shopping/pages/signup.page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xffF5F5F5),
          padding: EdgeInsets.only(
            top: 80,
            left: 20,
            bottom: 40,
            right: 20,
          ),
          child: Column(
            children: <Widget>[
              //card
              Container(
                height: 450,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black12,
                      offset: new Offset(1, 2.0), //projeção da sombra
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 60,
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Welcome",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text("Sign in to continue"),
                            ],
                          ),
                          TextButton(
                            child: Text("Sign Up"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupPage(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      TextFormField(
                        // autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "E-mail",
                          labelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        // autofocus: true,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        height: 40,
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          child: Text("Forgot your password?"),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: TextButton(
                          child: Text(
                            "Sign In",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => HomePage(),
                            //   ),
                            // );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 15,
                  bottom: 15,
                ),
                child: Text(
                  "- OR -",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Theme.of(context).accentColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: TextButton(
                  child: Row(
                    children: [
                      Container(
                        height: 24,
                        width: 100,
                        child: Image.asset(
                          "assets/facebook.png",
                          //fit: BoxFit.fill,
                        ),
                      ),
                      Text("Sign In with Facebook"),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Theme.of(context).accentColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: TextButton(
                  child: Row(
                    children: [
                      Container(
                        height: 24,
                        width: 100,
                        child: Image.asset(
                          "assets/google.png",
                          //fit: BoxFit.fill,
                        ),
                      ),
                      Text("Sign In with Google"),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
