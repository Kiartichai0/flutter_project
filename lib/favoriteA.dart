// TapboxA manages its own state.

//------------------------- TapboxA ----------------------------------

import 'package:flutter/material.dart';
import 'package:myapp1/main.dart';

class firstPage2 extends StatefulWidget {
  @override
  _firstPageState2 createState() => _firstPageState2();
}

class _firstPageState2 extends State<firstPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[100],
        title: Text("The dark knight"),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Column(children: <Widget>[
                Image.asset(
                  'images/darkknight.jpg',
                  height: 300,
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 270, left: 30, right: 30),
              child: Column(
                children: [
                  Text("The dark knight"),
                  Text(""),
                  Text(
                      "หากจะถามหาหนังอันดับหนึ่งในใจผมคงต้องยกให้ The Dark Knight แม้ว่าอาจจะมีหนังหลายเรื่องที่คู่ควรกว่า แต่ด้วยความที่ผมเกิดในยุคเริ่มดูหนังช่วงปี 2000 และเริ่มเปลี่ยนทัศนคติในการดูหนังครั้งแรกจาก The Dark Knightตอน The Dark Knight เข้าโรงผมยังไม่รู้จัก Nolan ไม่รู้จัก Batman แค่หลงซื้อตั๋วไปดูเพราะไม่มีอะไรทำ และคิดว่าก็คงมาแนว ๆ Spider-man แต่เมื่อออกจากโรง ผมถึงกลับต้องไปควานหาหนังที่ Nolan เคยกำกับมาดูเลย และจากจุดนี้ก็ทำให้ผมอ่านพวกนิยายน้อยลงและเริ่มดูหนังเยอะขึ้นครับแม้หน้าหนัง The Dark Knight จะเป็นหนัง Superhero แต่ผมมองว่ามันเป็นหนังอาชญากรรมที่เล่นประเด็นจิตวิทยาและสร้างทางเลือกกับคนดูได้แสบจริง ๆ ครับ การเลือกตัวร้ายอย่าง Joker มาสร้างสถานการณ์ยั่วยุให้ Batman ตบะแตก แล้ว Joker ยังเล่นกับคนดูด้วยการสร้างทางเลือกให้คุณต้องมานั่งคิดถึงศีลธรรมและความถูกต้อง พร้อมด้วยบทสนทนาที่คมคาย เป็นการเขียนบทที่ยอดเยี่ยมจริง ๆฉากต่าง ๆ ในหนังก็เจ๋งดีครับ ตั้งแต่ฉากปล้นธนาคารเปิดตัว Joker ต่อด้วยฉาก Car Chase ไล่ล่าด้วยกล้อง IMAX เป็นหนึ่งในฉาก Car Chase ในดวงใจผมเลย แล้วผมยังชื่นชมการถ่ายทำของเขาที่ผมมารู้ทีหลังว่าฉากรถบรรทุกตีลังกาเขาถ่ายทำโดยใช้ระเบิดจริง ๆ ยกรถให้คว่ำกันจริง ๆอีกหนึ่งจุดที่ไม่พูดถึงคงไม่ได้คือการแสดงที่ยอดเยี่ยมจาก Heath Ledger เขาได้มอบการแสดงระดับคลาสสิก เขาสวมบทเป็น Joker ราวกับตัวละครนี้มีอยู่บนโลกนี้จริง ๆ เล่นได้จิตถึงใจ คุ้มค่าแล้วกับที่เขาขังตัวในโรงแรมเป็นอาทิตย์เพื่อเข้าถึงตัวละคร Joker ด้วยการหมกหมุ่นอยู่กับตัวละครวิปริตทั้งหลายให้ตัวเองรู้สึกถึงความวิปริตของตัวละครนั้น ๆ ในปี 2008 นิตยสาร Empire มีการโหวต 500 อันดับหนังยอดเยี่ยมตลอดกาล และ The Dark Knight ได้อันดับ 15 ซึ่งเป็นอันดับสูงที่สุดในบรรดาหนังที่สร้างหลังปี 2000 หนังคลาสสิกแห่งยุค 2000"),
                  Text(""),FavoriteWidget(),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}