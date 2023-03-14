import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class textFormField12 extends StatefulWidget {
  const textFormField12({Key? key}) : super(key: key);

  @override
  State<textFormField12> createState() => _textFormFieldState();
}

class _textFormFieldState extends State<textFormField12> {
  late TextEditingController adCtrl,
      soyadCtrl,
      ePostaCtrl,
      sifreCtrl,
      sifreTekrarCtrl;
  String? ad, soyad, eposta, sifre, sifreT;
  var formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    adCtrl = TextEditingController();
    soyadCtrl = TextEditingController();
    ePostaCtrl = TextEditingController();
    sifreCtrl = TextEditingController();
    sifreTekrarCtrl = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    adCtrl.dispose();
    soyadCtrl.dispose();
    ePostaCtrl.dispose();
    sifreCtrl.dispose();
    sifreTekrarCtrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: adCtrl,
                  autovalidateMode: AutovalidateMode.always,
                  decoration: InputDecoration(
                      labelText: "ad",
                      hintText: "....",
                      suffixIcon: Icon(Icons.verified_user_outlined),
                      prefixIcon: Icon(Icons.person)),
                  validator: (deger) {
                    if (deger == null || deger.isEmpty) {
                      return "bu alan boş";
                    } else if (deger.length < 3) {
                      return "3 karakterden kısa";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (deger) {
                    ad = deger;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: soyadCtrl,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      labelText: "soyad",
                      hintText: "....",
                      suffixIcon: Icon(Icons.verified_user_rounded),
                      prefixIcon: Icon(Icons.person_add_disabled)),
                  validator: (deger) {
                    if (deger == null || deger.isEmpty) {
                      return "bu alan boş";
                    } else if (deger.length < 3) {
                      return "3 karakterden kısa";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (deger) {
                    soyad = deger;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: sifreCtrl,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "şifre",
                    hintText: "***",
                    suffixIcon: Icon(Icons.password_rounded),
                    prefixIcon: Icon(Icons.password),
                  ),
                  validator: (deger) {
                    if (deger == null || deger.isEmpty) {
                      return "bu alan boş";
                    } else if (deger.length < 3) {
                      return "2 karakterden kısa";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (deger) {
                    sifre = deger;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: sifreTekrarCtrl,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Tekrar şifre",
                    hintText: "***",
                    suffixIcon: Icon(Icons.password_rounded),
                    prefixIcon: Icon(Icons.password),
                  ),
                  validator: (deger) {
                    if (deger == null || deger.isEmpty) {
                      return "bu alan boş";
                    } else if (sifreCtrl.text != deger) {
                      return "şifreler aynı değil";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (deger) {
                    sifreT = deger;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: ePostaCtrl,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: "eposta",
                    hintText: "...",
                    prefixIcon: Icon(Icons.mail),
                    suffixIcon: Icon(Icons.mail_lock),
                  ),
                  validator: (mail) {
                    bool durum = EmailValidator.validate(mail!);
                    if (durum == false) {
                      return "doğru eposta adresi girmediniz!";
                    }
                  },
                  onSaved: (deger) {
                    eposta = deger;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(),
                SizedBox(height: 20),
                TextFormField(),
                SizedBox(height: 20),
                TextFormField(),
                SizedBox(height: 20),
                TextFormField(),
                SizedBox(height: 20),
                TextFormField(),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      bool formDurum = formKey.currentState!.validate();

                      if (formDurum == true) {
                        formKey.currentState!.save();
                      }
                      String sonuc =
                          "ad: $ad, soyad: $soyad, sifre: $sifre, eposta: $eposta ";
                      print(sonuc);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          sonuc,
                          style: TextStyle(fontSize: 20),
                        ),
                      ));
                    },
                    child: Text(
                      "Kaydet",
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
