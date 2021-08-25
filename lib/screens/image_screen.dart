import 'package:filo_demo/widgets/bottom_option_bar.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageScreen extends StatefulWidget {
  ImageScreen({Key? key, required this.imageUrl});

  final String imageUrl;

  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  bool isRotaionEnabled = true;
  void toggleRotation() {
    setState(() {
      isRotaionEnabled = !isRotaionEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: PhotoView(
              imageProvider: NetworkImage(widget.imageUrl),
              enableRotation: isRotaionEnabled,
            ),
          ),
          Positioned(
              top: 30.0,
              right: 10.0,
              child: Container(
                child: Column(
                  children: [
                    Switch(
                      value: isRotaionEnabled,
                      onChanged: (val) {
                        toggleRotation();
                      },
                    ),
                    Text('Rotation',style: TextStyle(color: Colors.white,fontSize: 10.0),)
                  ],
                ),
              )),
          Positioned(
            bottom: 10.0,
            left: 10.0,
            right: 10.0,
            child: BottomOptionBar(),
          ),
        ],
      ),
    );
  }
}
