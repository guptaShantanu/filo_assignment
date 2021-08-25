import 'package:flutter/material.dart';



class BottomIcon extends StatelessWidget {
  const BottomIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.category,
            size: 36.0,
          ),
          Text(
            'Option',
            style: TextStyle(fontSize: 10.0),
          )
        ],
      ),
    );
  }
}
