import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;

  void _onScroll(){

  }

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 1,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(image: 'assets/images/one.jpg'),
          makePage(image: 'assets/images/two.jpg'),
          makePage(image: 'assets/images/three.jpg'),
          makePage(image: 'assets/images/four.jpg'),
        ],
      ),
    );
  }

  Widget makePage({image}){
    return Container(
     decoration: BoxDecoration(
       image: DecorationImage(
         image: AssetImage(image),
         fit: BoxFit.cover
       )
     ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3,0.9],
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.2),
            ]
          )
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                 crossAxisAlignment: CrossAxisAlignment.baseline,
                 textBaseline: TextBaseline.alphabetic,
                 children: <Widget>[
                  Text('1',style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                   Text('/4',style: TextStyle(color: Colors.white, fontSize: 15,),),
                 ],
            ),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('USA',style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(Icons.star,color: Colors.grey,size: 15,),
                        ),
                      ],
                    )
                    ],
                  )
              )
          ]
          ),
        ),
      ),
    );
  }

}
