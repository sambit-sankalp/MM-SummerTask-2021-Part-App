import 'package:flutter/material.dart';
import 'package:monday_morning_app/Home.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Center(
              child: Container(
                  width: 200,
                  height: 150,
                  child: Image.asset('images/MM Logo Black.png')),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter valid email id as abc@gmail.com'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter secure password'),
            ),
          ),
          SizedBox(
            height: 60.0,
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              'Forgot Password?',
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
          ),
          Container(
              height: 150,
              width: 350,
              child: Column(
                children: [
                  Container(
                    height: 40.0,
                    width: 500.0,
                    decoration: BoxDecoration(
                        color: Color(0xFF3071ac),
                        borderRadius: BorderRadius.circular(20)),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => Home()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 40.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                        color: Color(0xFF3071ac),
                        borderRadius: BorderRadius.circular(20)),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => Home()));
                      },
                      child: Text(
                        'Continue without Login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 130,
          ),
          Text('If you are not the admin,press "Continue without login".')
        ],
      ),
    );
  }
}
