import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:real_estate_test_app_by_anthony/model/product.dart';

Widget Apartment(
    Product home, BuildContext context, double height, double width) {
  Gradient grad =
      LinearGradient(colors: [Colors.white70, Colors.white60], stops: [0, 1]);
  return ClipRRect(
    borderRadius: BorderRadius.circular(15),
    child: Container(
        decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(home.assetImage), fit: BoxFit.cover)),
        width: width,
        height: height,
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.only(left: 15, right: 15, bottom: 30),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BackdropFilter(
            filter: ui.ImageFilter.blur(
              sigmaX: 8.0,
              sigmaY: 8.0,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: grad, borderRadius: BorderRadius.circular(50)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Spacer(),
                Text(home.address),
                Spacer(),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(blurRadius: 10, color: Colors.black12)
                      ]),
                  child: Icon(Icons.arrow_forward_ios),
                )
              ]),
            ),
          ),
        )),
  );
}
