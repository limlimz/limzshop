import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:limzshop/homepage.dart';
import 'package:limzshop/singleproduct.dart';


class ListProducts extends StatelessWidget {
final String   name;

ListProducts({ required this.name});




  // Widget _buildFeaturedProduct({required String name ,required String image,required double price}){
  //   return  Card(
  //       child: Container(
  //         height: 250,
  //         width: 180,
  //
  //         child: Column(
  //           children: [
  //             Container(
  //               height: 170,
  //               width: 160,
  //               decoration: BoxDecoration(
  //                 // color: Colors.grey,
  //                   image: DecorationImage(
  //                     image: AssetImage("assets/$image"),
  //                   )
  //               ),
  //
  //             ),
  //             Text("ksh $price",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.greenAccent),),
  //             Text( name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),)
  //           ],
  //         ),
  //       )
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text("product list"),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black), onPressed: () {

          Navigator.push(context,
            MaterialPageRoute(builder: (context2) => Homepage()),
          );
        },),
        actions: [
          IconButton(icon: Icon(Icons.search,color: Colors.black,), onPressed: () {  },),
          IconButton(icon: Icon(Icons.notifications_none_outlined,color: Colors.black), onPressed: () {  },),
        ],

      ),
      body:       Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Container(
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Featured",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      Text("see all ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    ],
                  )
                ],
              ),
            ),

            Container(
              height: 600,
              child: GridView.count(
                mainAxisSpacing: 10,
                childAspectRatio: 0.7,
                crossAxisCount: 2,
                scrollDirection: Axis.vertical,
                children: [
                  SingleProductState(image: 'limz.png', name: 'sneaker', price: 3600

                  ),

                  SingleProductState(image: 'lix.png', name: 'sneaker', price: 3500

                  ),
                  SingleProductState(image: 'linike.png', name: 'sneaker', price: 3000

                  ),
                  SingleProductState(image: 'lim.png', name: 'sneaker', price: 3000

                  ),
                  SingleProductState(image: 'lizs.png', name: 'sneaker', price: 3000


                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
