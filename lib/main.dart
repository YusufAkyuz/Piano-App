import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

//void main() => runApp(MyApp()); üstteki ile aynı şeyi ifade ederi
//tek satırlık metod oluştururken => ile tek satırda kısa sytnax ile oluşturmamız sağlanmış olur
//burda metodun sadece tek satırının var olabileceği önemli bir detaydır

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }
  Expanded createButton(int number,Color color) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(1),
        color: color,
        child:TextButton(
          onPressed: (){
            playSound(number);
          },
          child: Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "Music App",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,//Satırın tümüne yayılmasını sağlar
            children: <Widget>[
              createButton(1,Colors.red),
              createButton(2,Colors.indigo),
              createButton(3,Colors.green),
              createButton(4,Colors.blue),
              createButton(5,Colors.deepPurple),
              createButton(6,Colors.amber),
              createButton(7,Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}
