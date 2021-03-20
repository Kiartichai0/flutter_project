import 'package:flutter/material.dart';
import 'package:myapp1/favoriteB.dart';
import 'package:myapp1/main.dart';

class firstPage extends StatefulWidget {
  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[100],
        title: Text("Schindler's List"),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Column(children: <Widget>[
                Image.asset(
                  'images/schindlers.jpg',
                  height: 300,
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 270, left: 30, right: 30),
              child: Column(
                children: [
                  Text("Schindler's List"),
                  Text(""),
                  
                  Text(
                      "สิ่งแรกที่ผมอยากจะสารภาพคือ ผมพลาดหนังเรื่องนี้ไปได้อย่างไรตั้งหลายสิบปี ทั้งที่เห็นคะแนน imdb รวมถึงคำสรรเสริญต่าง ๆ จนกระทั่งมีคนถามผมว่า ดูเรื่องนี้หรือยัง ผมเลยตัดสินใจดูหนังความยาวสามชั่วโมงเรื่องนี้ Schindler's List เป็นเรื่องราวของชีวิตของออสก้า ชินด์เลอร์ นักธุรกิจชาวโปแลนด์ที่ฉกฉวยผลประโยชน์จากสงคราม ด้วยการลงทุนเสี่ยงครั้งใหญ่ทำให้เขาได้ก่อสร้างโรงงานผลิตอาวุธให้นาซีโดยใช้แรงงานชาวยิวจากค่ายกักกัน ผมดูโดยไม่รู้เรื่องย่อ รู้แค่ว่าเป็นหนังเกี่ยวกับนาซีกระทำต่อยิวและก็รู้ว่าสปีลเบิร์กเป็นยิว ทันทีที่ดูจบผมไม่รู้จะบรรยายความสุดยอดของหนังเรื่องนี้ยังไง การเล่าเรื่อง ประเด็นของหนัง รวมถึงความโหดร้ายของสงคราม มิตรภาพระหว่างสงคราม มันถูกถ่ายทอดออกมาในหนังได้อย่างยอดเยี่ยม เยี่ยมจนไม่รู้สึกว่านี่คือหนังยาวสามชั่วโมง เพราะเรื่องดำเนินไปเรื่อย ๆ อย่างเป็นธรรมชาติและน่าติดตาม ไม่มีฉากไหนที่ผมรู้สึกว่าฟุ่มเฟือยหรือไม่จำเป็นต้องใส่แต่อย่างใด การที่สปีลเบิร์กเลือกถ่ายทำหนังเป็นขาวดำก็เป็นสิ่งที่ผมรู้สึกว่าเหมาะสมกับหนังมาก ๆ เหตุผลของสปีลเบิร์กคือเพื่อเน้นย้ำให้เห็นถึงบาดแผลจากสงคราม และถ้าเป็นภาพสีอารมณ์ของหนังจะเบาลงไปเยอะ ส่วนในสายตาผมมองว่ามันดูขลังมากครับ และอาจจะสิ่งอย่างที่สปีลเบิร์กบอกว่ามันทำให้คนโฟกัสที่เรื่องราวมากกว่าภาพ"),
                  Text(
                      ""),
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
