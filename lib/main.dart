import 'package:flutter/material.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.home),
                    Expanded(child: Container()),
                    CircleAvatar(
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      backgroundColor: Colors.grey[300],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(5.0),
                      child: Text('2'),
                      decoration: BoxDecoration(
                          border: Border.all(width: 2.0),
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.more_vert)
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Image.asset(
                    'images/g.png',
                    width: 200.0,
                    height: 200.0,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(50.0),
                            right: Radius.circular(50.0)),
                        borderSide: BorderSide(color: Colors.grey[300])),
                    hintText: 'Search or type web address',
                    hintStyle:
                        TextStyle(fontFamily: 'Roboto', color: Colors.black87),
                    suffixIcon: Icon(
                      Icons.keyboard_voice,
                      color: Colors.black,
                    ),
                    fillColor: Colors.grey[300],
                    filled: true,
                  ),
                  cursorColor: Colors.black,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Recent(
                      image: 'instgram.png',
                      label: 'instagram',
                    ),
                    Recent(image: 'twitter.png', label: 'twitter'),
                    Recent(
                      image: 'buyyourmart.png',
                      label: 'buy your mart',
                    )
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Discover',
                        style: TextStyle(
                            fontFamily: 'Roboto', color: Colors.black)),
                    Icon(Icons.settings),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Discover(
                  article: 'Announcing Flutter 2.2 at Google I/O 2021',
                  nimage: 'news1.png',
                  cimage: 'buyyourmart.png',
                  company: 'Buy your mart',
                ),
                Divider(
                  color: Colors.black,
                ),
                Discover(
                  article:
                      'Google I/O spotlight: Flutter in action at ByteDance',
                  nimage: 'news2.png',
                  company: 'Buy your mart',
                  cimage: 'buyyourmart.png',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Recent extends StatelessWidget {
  Recent({this.image, this.label});
  String image, label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          child: Image.asset('images/$image'),
          backgroundColor: Colors.white,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: TextStyle(fontFamily: 'Roboto', color: Colors.black),
        ),
      ],
    );
  }
}

class Discover extends StatelessWidget {
  Discover({this.article, this.nimage, this.cimage, this.company});
  String cimage, article, nimage, company;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(article,
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold)),
                ),
                Expanded(
                    child: Image.asset(
                  'images/$nimage',
                  width: 70.0,
                  height: 70.0,
                ))
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'images/$cimage',
                  width: 30.0,
                  height: 30.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(company),
                Text(' - 1d '),
                Expanded(child: Container()),
                Icon(Icons.share),
                SizedBox(
                  width: 20.0,
                ),
                Icon(Icons.more_vert),
                SizedBox(
                  width: 20.0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
