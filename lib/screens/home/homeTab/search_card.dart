import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({
    Key? key,
    required TextEditingController searchControl,
  })  : _searchControl = searchControl,
        super(key: key);

  final TextEditingController _searchControl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      decoration: const BoxDecoration(
        // color: Colors.grey,
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Center(
        child: TextField(
          style: const TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: const BorderSide(
                  // color: Colors.white,
                  ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  // color: Colors.white,
                  ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            hintText: "Search..",
            prefixIcon: const Icon(
              Icons.search,
              // color: Colors.black,
            ),
            suffixIcon: const Icon(
              Icons.filter_list,
              // color: Colors.black,
            ),
            hintStyle: const TextStyle(
              fontSize: 15.0,
              // color: Colors.black,
            ),
          ),
          maxLines: 1,
          controller: _searchControl,
        ),
      ),
    );
  }
}
