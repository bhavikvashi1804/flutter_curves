import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Flutter Curves"),),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new ClipPath(
                child:new Image.asset("assets/images/google_hq.jpg"),
                clipper: new MyClipper(),
              ),
              new ClipPath(
                child:new Image.asset("assets/images/google_hq.jpg"),
                clipper: new MyClipper1(),
              ),
              
            ],
          ),
        ),

      ),

    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path=new Path();
    path.moveTo(0.0, 0.0);
    path.lineTo(size.width,0.0);
    path.lineTo(0.0,size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class MyClipper1 extends CustomClipper<Path>
{
  @override
  Path getClip(Size size) {
    var path=new Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
  
}
