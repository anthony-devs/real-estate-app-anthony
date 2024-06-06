import 'package:flutter/material.dart';
import 'package:real_estate_test_app_by_anthony/view-model/product_view.dart';

import '../model/product.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> products = [
      Product(address: "Gladkova St, 25", assetImage: "home1.jpg", rent: true),
      Product(address: "3rd St, 25", assetImage: "home2.jpg", rent: true),
      Product(address: "4th St, 25", assetImage: "home3.jpg", rent: true),
      Product(address: "Melanova St, 25", assetImage: "home1.jpg", rent: true),
    ];
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 150,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Center(
                          child: Text(
                        "Saint Petersburg",
                        style: TextStyle(color: Colors.black38),
                      )),
                    ),
                    Spacer(),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("pic.png"), fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(95)),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Hi, Marina",
                  style: TextStyle(color: Colors.black45, fontSize: 24),
                ),
                Text(
                  "let's select your perfect place",
                  style: TextStyle(color: Colors.black, fontSize: 35),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                      height: 175,
                      width: 175,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.orangeAccent),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("BUY",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12)),
                          Text("1 034",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w700)),
                          Text("offers", style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 175,
                      width: 175,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("RENT",
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 12)),
                          Text("2 212",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w700)),
                          Text("offers",
                              style: TextStyle(color: Colors.black45))
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 25),
        Container(
          padding: EdgeInsets.only(top: 15.0, bottom: 15, left: 15, right: 15),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Apartment(
                  products[0],
                  context,
                  (MediaQuery.of(context).size.width) / 1.5,
                  MediaQuery.of(context).size.width - 25),
              SizedBox(height: 45),
              Row(
                children: [
                  Apartment(
                      products[1],
                      context,
                      (MediaQuery.of(context).size.width) / 2,
                      ((MediaQuery.of(context).size.width) / 2) - 20),
                  Spacer(),
                  Apartment(
                      products[2],
                      context,
                      (MediaQuery.of(context).size.width) / 2,
                      ((MediaQuery.of(context).size.width) / 2) - 20)
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Apartment(
                      products[2],
                      context,
                      (MediaQuery.of(context).size.width) / 2,
                      ((MediaQuery.of(context).size.width) / 2) - 20),
                  Spacer(),
                  Apartment(
                      products[1],
                      context,
                      (MediaQuery.of(context).size.width) / 2,
                      ((MediaQuery.of(context).size.width) / 2) - 20)
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
