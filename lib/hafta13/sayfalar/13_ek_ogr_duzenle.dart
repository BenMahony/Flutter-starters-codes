import 'package:ders_11/hafta13/models/13_ek_ogrenci.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ogrenciDuzenle extends StatefulWidget {
  ogrenciDuzenle({Key? key}) : super(key: key);

  late ogrenci seciliOgr;
  ogrenciDuzenle.parametreli(this.seciliOgr);

  @override
  State<ogrenciDuzenle> createState() => _ogrenciDuzenleState();
}

class _ogrenciDuzenleState extends State<ogrenciDuzenle> {
  late TextEditingController adCtrl, soyAdCtrl, notCtrl, fotoCtrl;

  @override
  void initState() {
    super.initState();
    adCtrl = TextEditingController(text: widget.seciliOgr.adi);
    soyAdCtrl = TextEditingController(text: widget.seciliOgr.soyadi);
    notCtrl = TextEditingController(text: widget.seciliOgr.not.toString());
    fotoCtrl = TextEditingController(text: widget.seciliOgr.foto);
  }

  var formkey = GlobalKey<FormState>();
  @override
  void dispose() {
    super.dispose();
    adCtrl.dispose();
    soyAdCtrl.dispose();
    notCtrl.dispose();
    fotoCtrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Düzenleme Sayfası"),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              TextFormField(
                controller: adCtrl,
                decoration: InputDecoration(
                    labelText: "Ad", hintText: "ad girininiz..."),
                onSaved: (girilen) {
                  widget.seciliOgr.adi = girilen!;
                },
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: soyAdCtrl,
                decoration: InputDecoration(
                    labelText: "SoyaAd", hintText: "Soyadınızı girininiz..."),
                onSaved: (girilen) {
                  widget.seciliOgr.soyadi = girilen!;
                },
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: notCtrl,
                decoration: InputDecoration(
                    labelText: "Not", hintText: "notunuzu girininiz..."),
                onSaved: (girilen) {
                  widget.seciliOgr.not = int.parse(girilen!);
                },
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: fotoCtrl,
                decoration: InputDecoration(
                    labelText: "foto url", hintText: "url girininiz..."),
                onSaved: (girilen) {
                  widget.seciliOgr.foto = girilen!;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        formkey.currentState!.save();
                        Navigator.pop(context);
                      },
                      child: Text("kaydet")),
                  SizedBox(width: 5),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("iptal")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
