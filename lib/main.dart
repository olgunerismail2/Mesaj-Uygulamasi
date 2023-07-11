import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Temel Mesajlaşma Uygulaması",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  const Iskele({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mesajlaşma Uygulaması Arayüzü"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  TextEditingController t1 = TextEditingController();

  List mesajListesi = [];
  mesajlariEkle() {
    setState(() {
      mesajListesi.add(t1.text);
      t1.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              itemCount: mesajListesi.length,
              itemBuilder: (context, int indeksNumarasi) =>
                  Text(mesajListesi[indeksNumarasi]),
            ),
          ),
          TextField(
            controller: t1,
          ),
          ElevatedButton(
            onPressed: mesajlariEkle,
            child: Text("Gönder"),
          ),
        ],
      ),
    );
  }
}
