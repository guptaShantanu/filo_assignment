import 'package:flutter/material.dart';


class CatalogImageBox extends StatelessWidget {
  const CatalogImageBox({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(
              blurRadius: 3.0,
              offset: Offset(3,3),
              color: Colors.black.withOpacity(0.2)
          ),BoxShadow(
              blurRadius: 3.0,
              offset: Offset(3,-3),
              color: Colors.black.withOpacity(0.2)
          )]
      ),
      child: Expanded(
        flex: 8,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover
              )
          ),
        ),
      ),
    );
  }
}
