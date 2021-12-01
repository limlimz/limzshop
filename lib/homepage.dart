import 'dart:ui';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:limzshop/detail%20Screen.dart';
import 'package:limzshop/listproducts.dart';
import 'package:limzshop/singleproduct.dart';
import"./model/product.dart";
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

Product menData;
Product menData;
Product menData;



class _HomepageState extends State<Homepage> {
  bool homecolor = true;
  bool cartcolor = true;
  bool aboutcolor = true;
  bool contactcolor = true;

  Widget _buildNewArchives() {
    return Column(
      children: [
        Container(
          height: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New archives",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context2) => ListProducts(
                                    name: "New archives",
                                  )),
                        );
                      },
                      child: Text(
                        "see all ",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )
                  ),
                ],
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context2) => Detailscreen(
                                  image: 'limz.png',
                                  name: 'sneakera',
                                  price: 3000)),
                        );
                      },
                      child: SingleProductState(
                          image: 'limz.png', name: 'sneakera', price: 3000),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context2) => Detailscreen(
                                  image: 'limz.png',
                                  name: 'sneakera',
                                  price: 3000)
                          ),
                        );
                      },
                      child: SingleProductState(
                          image: 'lix.png',
                          name: 'sneakera',
                          price: 3500),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context2) => Detailscreen(
                                  image: 'limz.png',
                                  name: 'sneakera',
                                  price: 3000)),
                        );
                      },
                      child: SingleProductState(
                          image: 'lix.png',
                          name: 'sneakera',
                          price: 3000
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context2) => Detailscreen(
                                  image: 'limz.png',
                                  name: 'sneakera',
                                  price: 3000)),
                        );
                      },
                      child: SingleProductState(
                          image: 'limz.png',
                          name: 'sneakera',
                          price: 3000),
                    ),
                    GestureDetector(
                      
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context2) => Detailscreen(
                                  image: 'limz.png',
                                  name: 'sneakera',
                                  price: 3000)),
                        );
                      },
                      child: SingleProductState(
                          image: 'limz.png',
                          name: 'sneakera',
                          price: 3000),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMyDrawwer() {
    return Container(
      color: Colors.white,
      // width: 50,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("limo"),
              decoration: BoxDecoration(color: Colors.purpleAccent),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/lizs.png"),
              ),
              accountEmail: Text("limopato254@gmail.com")),
          ListTile(
            selected: homecolor,
            onTap: () {
              setState(() {
                homecolor = true;
                cartcolor = false;
                aboutcolor = false;
                contactcolor = false;
              });
            },
            leading: Icon(Icons.home_outlined),
            title: Text("home"),
          ),
          ListTile(
            selected: cartcolor,
            onTap: () {
              setState(() {
                cartcolor = true;
                homecolor = false;
                aboutcolor = false;
                contactcolor = false;
              });
            },
            leading: Icon(Icons.add_shopping_cart),
            title: Text("cart"),
          ),
          ListTile(
            selected: aboutcolor,
            onTap: () {
              setState(() {
                aboutcolor = true;
                homecolor = false;
                cartcolor = false;
                contactcolor = false;
              });
            },
            leading: Icon(Icons.add_business_outlined),
            title: Text("About us"),
          ),
          ListTile(
            selected: contactcolor,
            onTap: () {
              setState(() {
                contactcolor = true;
                homecolor = false;
                aboutcolor = false;
                cartcolor = false;
              });
            },
            leading: Icon(Icons.phone),
            title: Text("contact Us"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.logout),
            title: Text("Log out"),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatured() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Featured",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context2) => ListProducts(
                              name: "Featured",
                            )),
                  );
                },
                child: Text(
                  "see all ",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context2) => Detailscreen(
                            image: 'limz.png', name: 'sneakera', price: 3000)),
                  );
                },
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context2) => Detailscreen(
                              image: 'limz.png',
                              name: 'sneakera',
                              price: 3000)),
                    );
                  },
                  child: SingleProductState(
                      image: 'limz.png', name: 'sneakera', price: 3000),
                ),

              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context2) => Detailscreen(
                            image: 'lix.png', name: 'sneakera', price: 3500)),
                  );
                },
                child: SingleProductState(
                    image: 'lix.png', name: 'sneakera', price: 3500),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context2) => Detailscreen(
                            image: 'lix.png', name: 'sneakera', price: 3000)),
                  );
                },
                child: SingleProductState(
                    image: 'lix.png', name: 'sneakera', price: 3000),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context2) => Detailscreen(
                            image: 'limz.png', name: 'sneakera', price: 3000)),
                  );
                },
                child: SingleProductState(
                    image: 'limz.png',
                    name: 'sneakera',
                    price: 3000),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context2) => Detailscreen(
                            image: 'limz.png',
                            name: 'sneakera',
                            price: 3000)),
                  );
                },
                child: SingleProductState(
                    image: 'limz.png',
                    name: 'sneakera',
                    price: 3000),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCategory() {
    return Column(
      children: [
        Container(
          height: 50,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Category",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
        ),
        Container(
            height: 80,
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  _buildCategoryProducts(
                    image: 'limz.png',
                  ),
                  _buildCategoryProducts(
                    image: 'limz.png',
                  ),
                  _buildCategoryProducts(
                    image: 'limz.png',
                  ),
                  _buildCategoryProducts(
                    image: 'limz.png',
                  ),
                  _buildCategoryProducts(
                    image: 'limz.png',
                  ),
                  _buildCategoryProducts(
                    image: 'limz.png',
                  ),
                ]
                )
            )
        ),
      ],
    );
  }

  Widget _buildImageSlider() {
    return Container(
      height: 240,
      child: Carousel(
        images: [
          AssetImage("assets/lizs.png"),
          AssetImage("assets/linike.png"),
          AssetImage("assets/limz.png"),
          AssetImage("assets/lim.png"),
          AssetImage("assets/limz.png"),
        ],
        dotSize: 4.0,
        dotSpacing: 15.0,
        dotColor: Colors.purpleAccent,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.purple.withOpacity(0.5),
        borderRadius: true,
        autoplay: true,
        showIndicator: true,
      ),
    );
  }

  Widget _buildCategoryProducts({required String image}) {
    return Container(
      height: 50,
      child: Row(
        children: [
          CircleAvatar(
            maxRadius: 45,
            backgroundColor: Colors.greenAccent,
            child: Image(
              image: AssetImage("assets/$image"),
            ),
          )
        ],
      ),
    );
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: _buildMyDrawwer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sneakers",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            _key.currentState!.openDrawer();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: FutureBuilder(
          future: FirebaseFirestore.instance
              .collection("product")
              .doc("p7rgAVK40rzzTb1xO4Gv")
              .get(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            menData=Product(image:snapshot.data!.docs, name: '', price: 300);
            return Container(
              height: double.infinity,
              width: double.infinity,
              // color: Colors.blue,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: [
                  _buildImageSlider(),
                  _buildCategory(),
                  SizedBox(
                    height: 10,
                  ),
                  _buildFeatured(),
                  _buildNewArchives(),
                ],
              ),
            );
          }),
    );
  }
}
