import 'package:flutter/material.dart';
import 'package:cryptotraq/main.dart';
import 'package:cryptotraq/components/searchButton.dart';
import 'package:cryptotraq/components/dropdownCategory.dart';
import 'package:cryptotraq/components/profilePic.dart';


class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({ Key? key , required this.appBar}) : super(key: key);
  final AppBar appBar;
  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override

  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool isSearch=false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
          title: isSearch ?null: Text('cryptotraq'),
          leading: ProfilePic(),
          actions: [
          //  SearchButton(
          //    fold: () => setState(() => isSearch = !isSearch),
          //  ),
           DropdownCategory(),
         ],
         backgroundColor: Colors.transparent,
         shadowColor: Colors.transparent,
         foregroundColor: Colors.black,
    );
      
    
  }
}
