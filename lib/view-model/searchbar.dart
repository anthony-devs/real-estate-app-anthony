import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 230,
          height: 50,
          child: Center(child: Text("Saint Petersburg")),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(500),
            color: Colors.white,
          ),
        ),
        SizedBox(width: 25),
        Container(
          width: 50,
          height: 50,
          child: Center(
            child: Icon(Icons.filter_list),
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(50)),
        )
      ],
    );
  }
}
