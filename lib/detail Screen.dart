import 'package:flutter/material.dart';
import 'package:limzshop/homepage.dart';

import 'CartScreen.dart';

class Detailscreen extends StatefulWidget {
  final String image;
  final double price;
  final String name;

  Detailscreen({
    required this.image,
    required this.price,
    required this.name,
  });

  @override
  _DetailscreenState createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  int count = 1;

  Widget _productSize({
    required String name,
  }) {
    return Container(
      height: 60,
      color: Colors.green,
      child: Row(
        children: [
          Container(
            color: Colors.purpleAccent,
            height: 60,
            width: 60,
            child: Center(child: Text(name)),
          )
        ],
      ),
    );
  }

  Widget _productcolor({
    required Color Color,
  }) {
    return Container(
      height: 60,
      width: 60,
      color: Color,
    );
  }

  final TextStyle mystyle = TextStyle(
    fontSize: 18,
  );
Widget _buildImage(){
  return Center(
    child: Container(
      width: 300,
      child: Card(
        child: Container(
          height: 240,
          decoration: BoxDecoration(
            // color: Colors.purpleAccent,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/${widget.image}"),
              )),
        ),
      ),
    ),
  );
}
Widget _buildNameDesr(){
  return Container(
    height: 100,
    // color: Colors.purpleAccent,
    child: Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.name),
            Text(widget.price.toString()),
            Text("Description"),
          ],
        ),
      ],
    ),
  );
}
Widget _builddes(){
  return  Container(
    height: 100,

    // color: Colors.green,
    child: Wrap(
      children: [
        Text(
          " Nike Air is our iconic innovation that uses pressurized air in a durable, "
              "flexible membrane to provide lightweight cushioning. The air compresses on"
              "impact and then immediately returns to its original shape and volume, ready for the next impact.",
          style: TextStyle(fontSize: 13),
        )
      ],
    ),
  );
}
Widget _buildSize(){
  return Column(
    children: [
      Text("Size"),
      Container(
        width: 260,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _productSize(name: 'S'),
            _productSize(name: 'M'),
            _productSize(name: 'L'),
            _productSize(name: 'XXL'),
          ],
        ),
      ),
    ],
  );
}
Widget _buildColor(){
  return Column(
    children: [
      Text("Color"),
      Container(
        width: 260,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _productcolor(Color: Colors.purpleAccent),
            _productcolor(Color: Colors.black),
            _productcolor(Color: Colors.yellow),
            _productcolor(Color: Colors.green),
          ],
        ),
      )
    ],
  );
}
Widget _buildQuantity(){
  return Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Quantity"),
          Container(
            height: 40,
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      count--;
                    });
                  },
                  child: Icon(Icons.remove),
                ),
                Text(count.toString()),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Icon(Icons.add),
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.purpleAccent, borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
    ],
  );
}
Widget _buildCheckout(){
  return

      Container(
        height: 60,
        width: double.infinity,
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context2) => CartScreen(name: widget.name, Image: widget.image, price: widget.price,)),
            );
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          color: Colors.purpleAccent,
          child: Text("Checkout"),
        ),
      );


}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Detail",
          style: TextStyle(color: Colors.purpleAccent),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homepage()),
              );
            },
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.purpleAccent,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_outlined,
                color: Colors.purpleAccent,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildImage(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  _buildNameDesr(),
                  _builddes(),
                  _buildSize(),
                  _buildColor(),

                  _buildQuantity(),
                  _buildCheckout(),
                ],
              ),
            ),

          ],
        )),
      ),
    );
  }
}
