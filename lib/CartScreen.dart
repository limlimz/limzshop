import 'package:flutter/material.dart';

import 'checkoutScreen.dart';

class CartScreen extends StatefulWidget {

  String Image;
  double price;
  String  name;
  CartScreen ({ required this.price,required this.name,required this.Image });
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int count= 1;
  Widget _buildSinglep(){
    return     Container(
      color: Colors.white,
      height: 160,
      width: double.infinity,
      child: Row(
        children: [
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(

                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          image: DecorationImage(
                              fit: BoxFit.fill, image: AssetImage("assets/${widget.Image}"))),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      child: ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(widget.name),
                            Text("shoe"),
                            Text("ksh ${widget.price.toString()}"),
                            SizedBox(height: 10,),
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
                                  color: Colors.purpleAccent, borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(

        height: 70,
        width: 100,
        padding: EdgeInsets.only(
          bottom: 10
        ),
        child: RaisedButton(child: Text("Next"),onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(builder: (context2) => CheckOut(Image: widget.Image, price: widget.price,  name: widget.name,)),
          );
        },
          color: Colors.purpleAccent,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title:Icon(Icons.shopping_cart,color: Colors.purpleAccent,size: 60,),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Homepage()),
              // );
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
      body: ListView(
        children: [
          _buildSinglep(),
          _buildSinglep(),
          _buildSinglep(),
          _buildSinglep(),
          _buildSinglep(),
          _buildSinglep()
        ],
      ),
    );
  }
}
