import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Color.fromRGBO(100, 108, 59, 1),
        primaryColor: Color(0xFF646C3B),
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white)),
          actions: [IconButton(icon: Icon(Icons.more_vert, color: Colors.white))]
        ),
        body: SingleChildScrollView(
          child: Wrap(
            children: [
              new Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Profile(), Image.asset("image/obama.jpg", height: 150)]
                ),
              ),
              new Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [ Status(34, "Posts"), SizedBox(width: 80), Status(1256, "Followers")])
              ),
              new Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Recycler("https://image.freepik.com/free-vector/beautiful-beach-design_1176-266.jpg"),
                    Recycler("https://st.depositphotos.com/1218908/1982/i/950/depositphotos_19825131-stock-photo-beautiful-beach-with-crystal-clear.jpg"),
                    Recycler("https://mrstreetwearmagazine.com/wp-content/uploads/c7e89aa1cf51c8c0bd1f59890024859a.jpg"),
                    Recycler("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyBXifNMBrWyNkP18zB2Gkb_t7uVwwATW6FA&usqp=CAU"),
                    Container(
                      width: 70,
                      height: 100,
                      decoration: BoxDecoration(color: Colors.black),
                      child: Column(
                        children: [
                          Text("+34", style: TextStyle(color: Colors.white)),
                          Text("photos", style: TextStyle(color: Colors.white))
                        ]
                      )
                    )
                  ]
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("image/google.png", width: 30, height: 30),
                  Image.asset("image/facebook.png", width: 20, height: 20),
                  Image.asset("image/instagram.png", width: 28, height: 28),
                  Image.asset("image/viber.webp", width: 20, height: 20),
                  Image.asset("image/twitter.png", width: 20, height: 20),
                ]
              ),
              SizedBox(height: 50),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('About', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    SizedBox(height: 15),
                    Text("For the tainted sorrow, Today too snow falls on it. For the tainted sorrow, Today too wind blows on it. For the tainted sorrow, Is like say a fox’s fur. For the tainted sorrow, Covered with snow curls up. For the tainted sorrow, Has no desires or wishes. For the tainted sorrow, In its torpor dreams of death. For the tainted sorrow, Frightens me piteously. For the tainted sorrow, Can’t be remedied and the sun sets…", style: TextStyle(fontSize: 15))
                  ]
                ),
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(width: 1, color: Colors.grey))
                )
              )
            ]
          )
        )
      )
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text('John McDonald', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Row(children: [Icon(Icons.add_location), Text("Los Angles, CA")]),
            ]
          ),
          RaisedButton(
            onPressed:() {},
            color: Color(0xFF646C3B),
            child: Text("Follow", style: TextStyle(color: Colors.white)),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
          )
        ]
      )
    );
  }
}

Column Status(int number, String text) {
  return Column(
    children: [
      Text(number.toString(), style: TextStyle(fontWeight: FontWeight.bold)),
      Text(text)
    ],
  );
}

Image Recycler(String url) {
  return Image.network(url, width: 70, height: 100, fit: BoxFit.fill);
}