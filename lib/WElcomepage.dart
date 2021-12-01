import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:limzshop/Login.dart';
import 'package:limzshop/sign%20up.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(" Get started",style: TextStyle(fontSize: 20),),
              Container(
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/kips.png"))),
              ),
              SizedBox(
                height: 40,
              ),

              Container(
                  height: 45,
                  width: 327,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    color: Colors.purpleAccent,
                    child: Text("Sign up",style: TextStyle(fontSize: 20),),
                  )),


              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(" Already have account?",style: TextStyle(fontSize: 16),),
                  GestureDetector(
                      onTap:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      }
                      ,child: Text(" Login",style: TextStyle(fontSize: 20,color: Colors.green),)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
