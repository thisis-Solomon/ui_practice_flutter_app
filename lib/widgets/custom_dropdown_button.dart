import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  final List<String> items;
  final double width;

  const CustomDropDownButton({super.key, required this.items, required this.width});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton<String>(
        value: items.first,
        items: items.map((item) {
          return DropdownMenuItem<String>(value: item, child: Text(item));
        }).toList(),
        dropdownColor: Colors.black26,
        underline: Container(),
        style: TextStyle(color: Colors.white, fontSize: 18),
        onChanged: (_) {},
      ),
    );
  }
}
