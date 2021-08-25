import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:filo_demo/models/image.dart' as _Image;

class CatalogImageBox extends StatelessWidget {
  const CatalogImageBox({
    Key? key,
    required this.image,
    required this.onError,
  }) : super(key: key);

  final _Image.Image image;
  final Function onError;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            blurRadius: 3.0,
            offset: Offset(3, 3),
            color: Colors.black.withOpacity(0.2)),
        BoxShadow(
            blurRadius: 3.0,
            offset: Offset(3, -3),
            color: Colors.black.withOpacity(0.2))
      ]),
      child: Expanded(
        flex: 8,
        child: Container(
          decoration: BoxDecoration(),
          child: CachedNetworkImage(
            imageUrl: image.imageUrl,
            placeholder: (context, url) =>
                Center(child: new CupertinoActivityIndicator()),
            errorWidget: (context, url, error) {
              print("Error");
              onError();
              return Icon(Icons.error);
            },
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
