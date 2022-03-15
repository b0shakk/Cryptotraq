import 'package:flutter/material.dart';

class DropdownCategory extends StatefulWidget {
  const DropdownCategory({Key? key}) : super(key: key);

  @override
  _DropdownCategoryState createState() => _DropdownCategoryState();
}

class _DropdownCategoryState extends State<DropdownCategory> {
  String dropdownValue = 'Stocks';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),

      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(30),
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.black12, width: 1)),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              alignment: AlignmentDirectional.center,
              value: dropdownValue,
              icon: const Icon(
                Icons.swap_vert,
                color: Colors.black,
              ),
              elevation: 16,
              style: const TextStyle(color: Colors.black),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Stocks', 'Cryptocurrency', 'NFTs']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
