
import 'package:flutter/material.dart';

import 'detailspage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fastest Designs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Fastest Designsr'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Fastest Designs',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 25.0),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 170.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(75.0))),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300,
                    child: ListView(
                      children: <Widget>[
                        _bulidFoodItem(
                            'assets/Fashion_T-Shirt_-MockupsForFree.png',
                            "Fastest Design",
                            "\$ 50.00",context),
                        _bulidFoodItem('assets/polo_shirt_PNG8173.png',
                            "Polo", "\$ 24.00",context),
                        _bulidFoodItem(
                            'assets/tshirt_PNG5433.png', "verzatchi", "\$ 10.00",context),
                        _bulidFoodItem('assets/dress_shirt_PNG8075.png',
                            "Vivo", "\$ 100.00",context),
                        _bulidFoodItem('assets/polo_shirt_PNG8159.png',
                            "T-shirt", "\$ 60.00",context),
                        _bulidFoodItem(
                            'assets/fbi_PNG19.png', "FBI", "\$ 77.00",context),
                        _bulidFoodItem('assets/dress_shirt_PNG8083.png',
                            "C-shirt", "\$ 77.00",context),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _bulidFoodItem(String imgPath, String foodName, String price , BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsPage(imgPath, foodName, price)));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Hero(
                  tag: imgPath,
                  child: Image(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                      height: 75.0,
                      width: 75.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      foodName,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15.0,
                          color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
    ),
  );
}
