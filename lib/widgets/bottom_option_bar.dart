import 'package:filo_demo/widgets/bottom_option_icon.dart';
import 'package:flutter/material.dart';


class BottomOptionBar extends StatelessWidget {
  const BottomOptionBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomIcon(),
          BottomIcon(),
          BottomIcon(),
          BottomIcon(),
        ],
      ),
    );
  }
}