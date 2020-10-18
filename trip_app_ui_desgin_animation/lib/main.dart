import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Nunito'),
    home: HomePage(),
  )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;
  int totalPage=4;
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
          makePage(
              page: 1,
              image: 'assets/images/one.jpg',
              title: 'Sydney',
              description: 'Sydney is known around the world as one of the greatest and most iconic cities on the planet'
          ),
          makePage(
            page: 2,
            image: 'assets/images/two.jpg',
            title: 'Rome, Italy',
            description: 'Whether it’s your first time in Rome or your 50th, the best thing about this city is that you’ll always discover something new each time you stroll the scenic streets.'
          ),
          makePage(
              page: 3,
              image: 'assets/images/three.jpg',
              title: 'Yosemite, California',
              description: 'Yosemite National Park looks enchanting during winters with its tall redwood trees and snowy cliffs apart from the many activities that it has to offer.'
          ),
          makePage(
              page: 4,
              image: 'assets/images/four.jpg',
              title: 'Prague, Czech Republic',
              description: 'Prague boasts of lit snow-glow during winters. The medieval architecture and wooden huts give an unconventional feel in their snow bloom.'
          ),
        ],
      ),
    );
  }

  Widget makePage({image,title,description,page}){
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
                  Text(page.toString(),style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                   Text('/'+ totalPage.toString(),style: TextStyle(color: Colors.white, fontSize: 15,),),
                 ],
            ),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title,style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),),
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
                        Text('4.0',style: TextStyle(color: Colors.white70),),
                        Text('(2300)',style: TextStyle(color: Colors.white38,fontSize: 12),)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(description,style: TextStyle(color: Colors.white.withOpacity(0.7),height: 1.9, fontSize: 15),),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('READ MORE',style: TextStyle(color: Colors.white),),
                    SizedBox(
                      height: 30,
                    ),
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
