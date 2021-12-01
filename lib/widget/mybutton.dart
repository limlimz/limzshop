import 'package:flutter/material.dart';



class MyButton extends StatelessWidget {

   final VoidCallback onPressed;
   final String name;
  MyButton({  required this.name,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      child: RaisedButton(
          child: Text(name,style: TextStyle(color: Colors.white,fontSize: 20),),
          color: Colors.purpleAccent,
          onPressed:onPressed,

          ),
    );
  }
}
