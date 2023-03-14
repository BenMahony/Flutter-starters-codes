import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../models/13_ek_ogrenci.dart';

class ogrenciEkle extends StatefulWidget {
  ogrenciEkle({Key? key}) : super(key: key);
  late List<ogrenci> liste;
  ogrenciEkle.parametreli(this.liste);

  @override
  State<ogrenciEkle> createState() => _ogrenciEkleState();
}

class _ogrenciEkleState extends State<ogrenciEkle> {
  ogrenci yeniOgr = ogrenci();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("öğrenci ekle")),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "adınızı giriniz",
                  hintText: "giriniz",
                ),
                onSaved: (girilen) {
                  yeniOgr.adi = girilen!;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "soyadınızı giriniz",
                  hintText: "giriniz",
                ),
                onSaved: (girilen) {
                  yeniOgr.soyadi = girilen!;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "notunuzu giriniz",
                  hintText: "giriniz",
                ),
                onSaved: (girilen) {
                  yeniOgr.not = int.parse(girilen!);
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "foto url giriniz",
                  hintText: "giriniz",
                ),
                onSaved: (girilen) {
                  yeniOgr.foto = girilen!;
                },
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        formkey.currentState!.save();
                        widget.liste.add(yeniOgr);
                        Navigator.pop(context);
                      },
                      child: Text("kaydet")),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("iptal"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
