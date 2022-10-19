import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String category;
  final bool isSelected;
  final VoidCallback onPressed;

  Categories({
    required this.category,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          category,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white : Colors.black26,
            // backgroundColor: Colors.black,
          ),
        ),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: isSelected ? Colors.green : Colors.black12,
          shape: const RoundedRectangleBorder(
              borderRadius:
              BorderRadius.all(Radius.circular(40))),
          minimumSize: Size(80, 40),
          padding: EdgeInsets.symmetric(vertical: 4.0),
        ),
      ),
    );
  }
}
