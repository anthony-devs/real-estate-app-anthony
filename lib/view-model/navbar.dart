import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Navbar extends StatefulWidget {
  Navbar({
    Key? key,
  }) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: GNav(
          activeColor: Colors.orangeAccent,
          backgroundColor: Color(0xFF232220),
          color: Colors.white,
          tabs: [
            GButton(
              icon: FontAwesomeIcons.magnifyingGlass,
              iconColor: Colors.white,
            ),
            GButton(icon: FontAwesomeIcons.message),
            GButton(icon: FontAwesomeIcons.house),
            GButton(icon: FontAwesomeIcons.heart),
            GButton(icon: FontAwesomeIcons.user)
          ]),
    );
  }
}
