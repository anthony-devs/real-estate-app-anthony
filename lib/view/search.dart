import 'package:flutter/material.dart';
import 'package:real_estate_test_app_by_anthony/view-model/searchbar.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("MAP.jpeg"), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Row(
            children: [SearchBar()],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  child: Center(
                    child: Icon(Icons.location_pin),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(151, 158, 158, 158),
                      borderRadius: BorderRadius.circular(50)),
                ),
                Spacer(),
                Container(
                  width: 150,
                  height: 50,
                  child: Center(child: Text("List of Variants")),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(151, 158, 158, 158),
                      borderRadius: BorderRadius.circular(50)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 120,
          )
        ],
      ),
    );
  }
}
