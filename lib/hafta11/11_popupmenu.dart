import 'package:flutter/material.dart';

class popupmenuornk11 extends StatefulWidget {
  const popupmenuornk11({Key? key}) : super(key: key);

  @override
  State<popupmenuornk11> createState() => _popupmenuornkState();
}

class _popupmenuornkState extends State<popupmenuornk11> {
  Map<String, int> sehirlerMap2 = {
    "erkek": 0,
    "kadın": 1,
    "non Cinsiyet": 2,
  };
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<int?>(
        itemBuilder: (context) {
          // return [
          //   PopupMenuItem(child: Text("ankara"), value: 6),
          //   PopupMenuItem(child: Text("adana"), value: 1),
          //   PopupMenuItem(child: Text("afyon"), value: 3),
          //   PopupMenuItem(child: Text("adıyaman"), value: 2),
          // ];
          return sehirlerMap2.entries
              .map((e) => PopupMenuItem(
                    child: Text(e.key),
                    value: e.value,
                  ))
              .toList();
        },
        onSelected: (deger) {
          print("deger: $deger");
        },
        icon: Icon(Icons.keyboard_double_arrow_down_sharp, size: 40),
      ),
    );
  }
}
