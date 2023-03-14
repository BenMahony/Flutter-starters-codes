import 'package:ders_11/hafta13/sayfalar/13_ek_ogr_duzenle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../models/13_ek_ogrenci.dart';
import '../sayfalar/13_ek_ogr_ekle.dart';

class anasayfaBuilderOrnk extends StatefulWidget {
  const anasayfaBuilderOrnk({Key? key}) : super(key: key);

  @override
  State<anasayfaBuilderOrnk> createState() => _anasayfaBuilderOrnkState();
}

class _anasayfaBuilderOrnkState extends State<anasayfaBuilderOrnk> {
  List<ogrenci> liste = [
    ogrenci.parametreli(1, "şule", "şeker", 45,
        "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80"),
    ogrenci.parametreli(2, "halil", "can", 30,
        "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80"),
    ogrenci.parametreli(3, "buse", "belsa", 60,
        "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Öğrenci Ekranı"),
      ),
      body: ListView.builder(
          itemCount: liste.length,
          itemBuilder: (context, index) {
            var ogr = liste[index];
            return ListTile(
              title: Text(ogr.adi + " " + ogr.soyadi),
              subtitle: Text(
                  "aldığı not: " + ogr.not.toString() + " " + ogr.getDurum),
              leading: CircleAvatar(backgroundImage: NetworkImage(ogr.foto)),
              trailing: ogr.getDurum == "geçti"
                  ? Icon(Icons.done)
                  : ogr.getDurum == "kaldı"
                      ? Icon(Icons.clear)
                      : Icon(Icons.safety_check),
              onTap: () {
                setState(() {
                  liste.forEach((element) {
                    element.secili = false;
                  });
                  ogr.secili = true;
                });
              },
              selected: ogr.secili,
              selectedTileColor: Colors.red,
              selectedColor: Colors.white,
            );
          }),
      bottomNavigationBar: SizedBox(
        height: 40,
        child: Row(
          children: [
            Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return ogrenciEkle.parametreli(liste);
                      }),
                    ).whenComplete(() {
                      setState(() {});
                    });
                  },
                  icon: Icon(Icons.add_outlined),
                  label: Text("ekle"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple)),
                )),
            Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context) {
                        return ogrenciDuzenle.parametreli(
                          liste
                              .where((element) => element.secili == true)
                              .first,
                        );
                      }),
                    ).whenComplete(() {
                      setState(() {});
                    });
                  },
                  icon: Icon(Icons.edit),
                  label: Text("düzenle"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                )),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: ElevatedButton.icon(
                onPressed: () {
                  var ogrSil =
                      liste.where((element) => element.secili == true).first;
                  var alert1 = AlertDialog(
                    title: Text("Emin misiniz?"),
                    content: Text(ogrSil.adi + " " + ogrSil.soyadi),
                    actions: [
                      TextButton(
                          onPressed: () {
                            liste.remove(ogrSil);
                            Navigator.pop(context);
                          },
                          child: Text("evet")),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("hayır")),
                    ],
                  );
                  showDialog(
                      context: context,
                      builder: (context) {
                        return alert1;
                      }).whenComplete(() {
                    setState(() {});
                  });
                },
                icon: Icon(Icons.delete),
                label: Text("sil"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
