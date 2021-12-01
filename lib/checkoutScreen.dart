import 'package:flutter/material.dart';
class CheckOut extends StatefulWidget {


  String Image;
  double price;
  String  name;
  CheckOut ({ required this.price,required this.name,required this.Image });


  @override
  _CheckOutState createState() => _CheckOutState();
}


class _CheckOutState extends State<CheckOut> {

  Widget _buildBottom( {
  required String startName, required String endName
}){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(startName  ),
        Text("ksh${endName}")
      ],

    );
  }
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
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          image: DecorationImage(
                              fit: BoxFit.fill, image: AssetImage("assets/limz.png"))),
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
                            Text("ksh ${widget.price}k"),
                            SizedBox(height: 10,),
                            Container(
                              height: 40,
                              width: 200,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                      Text("Quantity")  ,
                                  Text("1")
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
      bottomNavigationBar: Container(

        height: 70,
        width: 100,
        padding: EdgeInsets.only(
            bottom: 10
        ),
        child: RaisedButton(child: Text("Buy",style:TextStyle(fontSize: 20),),onPressed: (){},
          color: Colors.purpleAccent,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
        child: ListView(
          children:[ Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [



              _buildSinglep(),

              _buildSinglep(),
              _buildSinglep(),
              _buildSinglep(),
              _buildSinglep(),
              _buildSinglep(),



              Container(
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  _buildBottom(startName: 'Price', endName: '3000',),
                  _buildBottom(startName: 'Discount', endName: '3%',),
                  _buildBottom(startName: 'Shipping', endName: '300',),
                  _buildBottom(startName: 'Total', endName: '3300',),
                ],),
              ),
              // Wrap(
              //   direction: Axis.horizontal,
              //   children: [
              //     Text("Data"),
              //     Text("Data"),
              //   ],
              // )
            ],
          ),]
        ),
      ),

    );
  }
}
