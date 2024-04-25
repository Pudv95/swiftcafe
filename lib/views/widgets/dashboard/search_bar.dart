import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Search Favourite beverages',
          hintStyle: TextStyle(fontSize: 12,color: Colors.grey.withOpacity(0.5)),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(10)),
          prefixIcon: Icon(Icons.search,color: Colors.grey.shade500,),
          suffixIcon: Icon(Icons.tune,color: Colors.grey.shade500,)
      ),
      cursorColor: Colors.black,
    );
  }
}
