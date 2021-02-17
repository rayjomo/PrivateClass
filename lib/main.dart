import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Food Items',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        home: MyHomePage(title: "Food product available"),
    );
  }
}
class MyHomePage extends StatelessWidget{
  MyHomePage({Key key, this.title}):super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text("Product Item")),
       body: ListView(
         shrinkWrap: true,
         padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
         children: <Widget>[
           ProductBox(
             name: "Banana",
             description: "This is a fruit",
             price: "400",
             image: "food1.png",
           ),
           ProductBox(
             name: "Apple",
             description: "This is a apple",
             price: "200",
             image: "food2.png",
           ),
           ProductBox(
             name: "Mango",
             description: "This is a mango",
             price: "100",
             image: "food3.png",
           ),
           ProductBox(
             name: "Pizza",
             description: "This is a Pizza",
             price: "3500",
             image: "food4.png",
           ),
           ProductBox(
             name: "Rice",
             description: "This is a rice",
             price: "34000",
             image: "food5.png",
           )
         ],
       )
     );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.name, this.description, this.price, this.image})
    :super(key: key);

  final String name;
  final String description;
  final String price;
  final String image;

  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("imageFD/pdLogo" + image),
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(this.name,style: TextStyle(fontWeight: FontWeight.bold),),
                      Text(this.description),
                      Text("Price: " + this.price.toString()),
                    ],

                  ),
            ))
          ]
        ),
      ) ,
    );
  }
}


