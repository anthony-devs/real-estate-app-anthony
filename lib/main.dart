import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:real_estate_test_app_by_anthony/model/product.dart';
import 'package:real_estate_test_app_by_anthony/view-model/navbar.dart';
import 'package:real_estate_test_app_by_anthony/view-model/product_view.dart';
import 'package:real_estate_test_app_by_anthony/view/home.dart';
import 'package:real_estate_test_app_by_anthony/view/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selected = 0;
  List<String> icons = [
    'https://assets9.lottiefiles.com/packages/lf20_kqj0dsvl.json',
    'https://assets9.lottiefiles.com/packages/lf20_kqj0dsvl.json',
    'https://assets9.lottiefiles.com/packages/lf20_kqj0dsvl.json',
  ];
  List<Widget> pages = [
    Search(),
    Center(child: Text("Chats")),
    Home(),
    Center(child: Text("Likes")),
    Center(child: Text("Profile"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: selected == 2
                ? BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("bg.png"),
                      fit: BoxFit.cover,
                    ),
                  )
                : BoxDecoration(
                    color: Colors.white,
                  ),
            child: pages[selected],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 40, right: 40, bottom: 40),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500),
                  //boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 10)],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(500),
                  child: GNav(
                    padding: EdgeInsets.all(20),
                    backgroundColor: Color(0xFF232220),
                    style: GnavStyle.google,
                    tabBorderRadius: 1000,
                    tabBackgroundColor: Colors.orangeAccent,
                    iconSize: 10,
                    activeColor: Colors.black,
                    duration: Duration(milliseconds: 200),
                    color: Colors.white,
                    onTabChange: (value) {
                      setState(() {
                        selected = value;
                      });
                    },
                    tabs: [
                      GButton(
                        icon: FontAwesomeIcons.magnifyingGlass,
                        margin: EdgeInsets.all(0),
                      ),
                      GButton(icon: FontAwesomeIcons.message),
                      GButton(icon: FontAwesomeIcons.house),
                      GButton(icon: FontAwesomeIcons.heart),
                      GButton(icon: FontAwesomeIcons.user),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
