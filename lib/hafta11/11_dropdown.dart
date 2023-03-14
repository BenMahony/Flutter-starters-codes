import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class dropdownornk11 extends StatefulWidget {
  const dropdownornk11({Key? key}) : super(key: key);

  @override
  State<dropdownornk11> createState() => _dropdownornkState();
}

class _dropdownornkState extends State<dropdownornk11> {
  int? secilen = null;
  Map<String, int> sehirlerMap = {
    "ankara": 06,
    "bursa": 16,
    "afyon": 03,
    "adana": 01,
    "uşak": 64,
  };
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<int?>(
        // items: const [
        //   DropdownMenuItem(child: Text("afyon"), value: 03),
        //   DropdownMenuItem(child: Text("izmir"), value: 35),
        //   DropdownMenuItem(child: Text("bandırma"), value: 10),
        //   DropdownMenuItem(child: Text("istanbul"), value: 34),
        // ],
        items: sehirlerMap.entries
            .map(
              (e) => DropdownMenuItem(
                child: Text(e.key),
                value: e.value,
              ),
            )
            .toList(),
        onChanged: (deger) {
          setState(() {
            secilen = deger;
          });
          print("seçilen değer: $secilen");
        },
        value: secilen,
        hint: Text("şehir seçiniz"),
        icon: Icon(Icons.arrow_back_rounded),
        underline: Container(height: 3, color: Colors.black),
      ),
    );
  }
}
