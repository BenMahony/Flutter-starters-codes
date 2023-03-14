import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class scaffold_Ornek_6 extends StatelessWidget {
  const scaffold_Ornek_6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ustBar(),
      //body: body_text1(),
      //body: container_ornek1(),
      //body: Center(child: container_decoration()),
      //body: container_hsc(),

      floatingActionButton: btn_buton(),
    );
  }
}

Text body_text1() {
  return Text(
    "body bölümü içi",
    style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w700,
      color: Colors.blue.shade600,
    ),
  );
}

FloatingActionButton btn_buton() {
  return FloatingActionButton(
    child: Text("btn"),
    onPressed: () {
      print("buton tıklandı");
    },
  );
}

AppBar ustBar() {
  return AppBar(
    title: Text("uygulama başlığı bölümü"),
  );
}

Container container_hsc() {
  return Container(
    //padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
    margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
    color: Colors.grey,
    height: 400,
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          color: Colors.blueAccent,
          padding: EdgeInsets.all(40),
          child: Text(
            "H",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          color: Colors.greenAccent,
          padding: EdgeInsets.all(40),
          child: Text(
            "S",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          color: Colors.purpleAccent,
          padding: EdgeInsets.all(40),
          child: Text(
            "C",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    ),
  );
}

Container container_decoration() {
  return Container(
    padding: EdgeInsets.all(40),
    //color: Colors.green,
    child: const Text(
      "BANÜ",
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
      ),
    ),
    decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(
          color: Colors.green,
          width: 10,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(10, 10),
          ),
          BoxShadow(
            color: Colors.black,
            offset: Offset(-10, -10),
          ),
        ]),
  );
}

Container container_ornek1() {
  return Container(
    // alignment: Alignment.bottomRight,
    // width: 300,
    //  height: 300,
    color: Colors.yellow,
    constraints: BoxConstraints(
      maxHeight: 200,
      maxWidth: 280,
    ),
    padding: EdgeInsets.all(30),
    margin: EdgeInsets.all(40),
    child: Text(
      "container child bölümü " * 10,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      //textAlign: TextAlign.center,
    ),
  );
}
