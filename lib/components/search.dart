import 'package:flutter/material.dart';

class InspirationInputSearch extends StatefulWidget {
  const InspirationInputSearch({Key? key, required this.placeholder})
      : super(key: key);

  final String placeholder;

  @override
  State<InspirationInputSearch> createState() => _InspirationInputSearchState();
}

class _InspirationInputSearchState extends State<InspirationInputSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(244, 243, 243, 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.black87,
          ),
          hintText: widget.placeholder,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
