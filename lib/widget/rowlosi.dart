import 'package:flutter/material.dart';
class Rowi extends StatelessWidget {


  final VoidCallback onTap;
  final String name;
  final String  whichAccount;
  Rowi({  required this.name,required this.onTap,required this.whichAccount});
  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Text(whichAccount),
        SizedBox(width: 20,

        ),
        GestureDetector(
            onTap: onTap,
            child: Text(name,style: TextStyle(
                color: Colors.red
            ),))
      ],
    );
  }
}
