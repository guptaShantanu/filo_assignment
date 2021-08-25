import 'package:filo_demo/screens/catalog_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Filo Assignment',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              ),),
              Text('-by Shantanu Gupta'),
              SizedBox(
                height: 20.0,
              ),
              MaterialButton(
                color: Colors.black,
                elevation: 10.0,
                child: Text('Go',style: TextStyle(color: Colors.white),),
                  onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>CatalogScreen()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
