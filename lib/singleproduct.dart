import 'package:flutter/material.dart';



class SingleProductState extends StatelessWidget {

 final String name;
 final double price;
 final String  image ;
 SingleProductState({required this.name, required this.price, required this.image});
  @override
  Widget build(BuildContext context) {
    return  Card(
        child: Container(
          height: 220,
          width: 180,

          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                height: 170,
                width: 160,
                decoration: BoxDecoration(
                  // color: Colors.grey,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/$image"),
                    )
                ),

              ),
              Text("ksh ${price.toString()}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.greenAccent),),
              Text( name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),)
            ],
          ),
        )
    );
  }
}
