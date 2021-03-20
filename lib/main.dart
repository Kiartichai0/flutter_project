import 'package:flutter/material.dart';

import 'favoriteA.dart';
import 'favoriteB.dart';
import 'favoriteC.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Finder',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'Movie Finder'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Movie Finder',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'movie',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /*3*/
       //step4 เรียกใช้ state FavoriteWidget()
      ],
    ),
  );

  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: Text(' แอปพลิเคชั่นแนะนำภาพยนตร์ เพื่อคนรักภาพยนตร์',
      softWrap: true,
    ),
  );
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => firstPage2()), //เรียกใช้ TapboxA() ใน favoriteA.dart เมื่อกด ไอคอน home_rounded ที่มีข้อความว่า หน้าหลัก
                );
              },
              child: _buildButtonColumn(color, Icons.favorite, 'เรื่องที่ 1')),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => firstPage3()),//เรียกใช้ ParentWidget() ใน favoriteB.dart เมื่อกด ไอคอน favorite ที่มีข้อความว่า ถูกใจ
                );
              },
              child: _buildButtonColumn(color, Icons.favorite, 'เรื่องที่ 2')),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => firstPage()),//เรียกใช้ ParentWidgetC ใน favoriteC.dart เมื่อกด ไอคอน share ที่มีข้อความว่า แบ่งปัน
                );
              },
              child: _buildButtonColumn(color, Icons.favorite, 'เรื่องที่ 3')),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('movie finder'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/civilwar.jpeg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class FavoriteWidget extends StatefulWidget { //step  2 
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState(); //เรียกใช้ _FavoriteWidgetState()
}

class _FavoriteWidgetState extends State<FavoriteWidget> {  // step3  Subclass State สร้างตัวแปรเก็บค่าเพื่อเรียกใช้งาน
  bool _isFavorited = true;
  int _favoriteCount = 50;

  void _toggleFavorite() { //step4 เมื่อมีการคลิกที่ดาว
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  Widget build(BuildContext context) { //step 3
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite, //เมื่อกดเรียกใช้ฟังก์ชั่น  _toggleFavorite
          ),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favoriteCount'), //แสดงค่า _favoriteCount = 50
          ),
        ),
      ],
    );
  }
}