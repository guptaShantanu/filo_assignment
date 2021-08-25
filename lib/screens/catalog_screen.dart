import 'package:filo_demo/screens/image_screen.dart';
import 'package:filo_demo/widgets/catalog_image_box.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {

  List<String> images = [
    'https://image.shutterstock.com/image-vector/math-horizontal-banner-presentation-website-260nw-1859813464.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI3BZLJ--9t01Lp-3_kR0brrh1tojH2pLx-Q&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfRGJk12DDehZCUOTNU_Qm31YuV0g0JqFESA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp7vyRmkh5XoX_gTLVb2CZ5B6WgWm22_REuQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpFX2jJa8O7X9gTY-noK2fGzv7CiwcTbasGw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGMWQwqh4TM1f9UkaixqIy9zZK4JZoXKzkIA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkd0iHW4PgCk_KKgItIrjJ3i7CUOxIvcGWTA&usqp=CAU'


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Image Catalog',style: TextStyle(color: Colors.black),),
        leading: Icon(Icons.menu,color: Colors.black,),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          child: GridView.builder(
            itemCount: 100,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 4,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemBuilder: (context,index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>ImageScreen(imageUrl: images[index%7],)));
                  },
                  child: CatalogImageBox(imageUrl: images[index%7],),
                );
              }),
        ),
      ),
    );
  }
}
