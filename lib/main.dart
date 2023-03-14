import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ders_11/Hafta6_10/10_resimOrnek.dart';
import 'package:ders_11/Hafta6_10/6_scaffold.dart';
import 'package:ders_11/Hafta6_10/7_satir-sutun-giris.dart';
import 'package:ders_11/Hafta6_10/9_anaSayfa.dart';
import 'package:ders_11/hafta12/12_textFormGiris.dart';
import 'package:ders_11/hafta12/12_textOrnek.dart';
import 'hafta11/11_buttonOrnegi.dart';
import 'hafta11/11_dropdown.dart';
import 'hafta11/11_popupmenu.dart';
import 'hafta11/11_textfield.dart';
import 'hafta13/sayfalar/13_anaSayfa.dart';
import 'hafta13/sayfalar/13_anasayfa_builder.dart';

void main(List<String> args) {
  var appuyg = uygulamam();
  runApp(appuyg);
}

class uygulamam extends StatelessWidget {
  const uygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.purple.shade50,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      //
      // //çalıştırmak istediğiniz "home" sayfayı yorum satırından çıkarın. Daha sonra yorum satırına geri ekleyin.
      // //ayrıca birden fazla "body" içeren sayfalar var.
      //

      // //******* HAFTA 6-10 ***********\\\\\
      // home: scaffold_Ornek_6(),
      // home: satir_sutun_7(),
      // home: anaSayfa_9(),
      // home: resimUyg_10(),

      // //******** HAFTA 11-12 *********\\\\
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text("uygulama başlığı"),
      //     actions: [popupmenuornk11()],
      //   ),
      //   //body: buttonOrnk11(),
      //   //body: dropdownornk11(),
      //   //body: popupmenuornk11(),
      //   //body: texfieldornk11(),
      //   //body: textAreaContorller12(),
      //   //body: textFormField12(),
      // ),

      //******** HAFTA 13 *********\\\\
      //home: anasayfaBuilderOrnk(),
      //home: anaSayfaOrnk(),
    );
  }
}
