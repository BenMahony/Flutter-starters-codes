import 'package:flutter/material.dart';

class anaSayfa_9 extends StatefulWidget {
  const anaSayfa_9({Key? key}) : super(key: key);

  @override
  State<anaSayfa_9> createState() => _anaSayfaState();
}

class _anaSayfaState extends State<anaSayfa_9> {
  int sayac = 0;
  @override
  Widget build(BuildContext context) {
    //scaffold u buraya yazdık
    print("scaffold build çalıştı");
    return Scaffold(
      appBar: AppBar(
        title: Text("başlııııkkk"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "BUTONA TIKLANMA SAYISI:",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              sayac.toString(),
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            sayacFonksiyon();
          });
        },
        child: Icon(Icons.network_wifi),
      ),
    );
  }

  void sayacFonksiyon() {
    sayac++;
    print("buton tııklandı $sayac");
  }
}
