import 'package:flutter/material.dart';

class SearchButton extends StatefulWidget {
  SearchButton({Key? key, required this.fold}) : super(key: key);
  Function fold;
  @override
  _SearchButtonState createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  bool folded = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      width: folded ? 200 : 32,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.white,
        //boxShadow: kElevationToShadow[6],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: folded
                    ? TextField(
                        decoration: InputDecoration(
                          hintText: "seach your news",
                        ),
                      )
                    : null,
              ),
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 400),
            child: Material(
              type: MaterialType.transparency,
              //child: Padding(
              //  padding: EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(folded ? 32 : 0),
                  topRight: Radius.circular(32),
                  bottomLeft: Radius.circular(folded ? 32 : 0),
                  bottomRight: Radius.circular(32),
                ),
                child: Icon(
                  Icons.search,
                ),
                onTap: () {
                  setState(() {
                    folded = !folded;
                  });
                  widget.fold();
                  
                },
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}