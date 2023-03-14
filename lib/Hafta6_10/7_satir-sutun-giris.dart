import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class satir_sutun_7 extends StatelessWidget {
  const satir_sutun_7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hafta 07"),
      ),
      //body: Container(child: sutun_3lu()),
      //body: Container(child: satir_3lu()),
      //body: expandedVsFlexible(),
      //body: sekilUygulama(),
    );
  }
}

///////////////////////
Container sekilUygulama() {
  return Container(
    color: Colors.blueGrey,
    child: Center(
      child: Container(
        padding: EdgeInsets.all(10),
        color: Colors.grey,
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
            width: 100,
            height: 160,
            color: Colors.blue,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 0, 5),
                width: 75,
                height: 75,
                color: Colors.orange,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                height: 75,
                width: 75,
                color: Colors.red,
              ),
            ],
          ),
        ]),
      ),
    ),
  );
}

///////////////////////
Container expandedVsFlexible() {
  return Container(
    color: Colors.grey,
    //child: expandedMethod(),
    //child: flexibleMethod(),
  );
}

Row expandedMethod() {
  return Row(
    children: [
      Expanded(
        flex: 3, //birbirine oranlar
        child: Container(
          width: 300,
          height: 300,
          color: Colors.deepOrange,
        ),
      ),
      Expanded(
        //ekranda kalan yer kadar yer kaplar
        flex: 1,
        child: Container(
          width: 300,
          height: 300,
          color: Colors.deepPurple,
        ),
      ),
    ],
  );
}

Row flexibleMethod() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Flexible(
        flex: 1, //birbirine oranlar
        child: Container(
          width: 150,
          height: 300,
          color: Colors.deepOrange,
        ),
      ),
      Flexible(
        //eğer sığarsa widht, height; sığmazsa flex <- expanded ten farkı
        flex: 1,
        child: Container(
          width: 150,
          height: 300,
          color: Colors.deepPurple,
        ),
      ),
    ],
  );
}

/////////////////////
Row sutun_3lu() {
  return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [column_1(), column_1(), column_1()]);
}

Column satir_3lu() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [row_1(), row_1(), row_1()],
  );
}

Row row_1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    mainAxisSize: MainAxisSize.max,
    children: const [
      Icon(Icons.face_outlined, size: 75),
      Icon(Icons.assessment, size: 75),
      Icon(Icons.circle_notifications, size: 75),
    ],
  );
}

Column column_1() {
  return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Icon(Icons.zoom_out, size: 75),
        Icon(Icons.one_x_mobiledata, size: 75),
        Icon(Icons.bedroom_child, size: 75),
      ]);
}
