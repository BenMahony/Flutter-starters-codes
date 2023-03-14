import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class texfieldornk11 extends StatefulWidget {
  const texfieldornk11({Key? key}) : super(key: key);

  @override
  State<texfieldornk11> createState() => _texfieldornkState();
}

class _texfieldornkState extends State<texfieldornk11> {
  TextEditingController? a_ctrl;
  TextEditingController? b_ctrl;

  @override
  void initState() {
    a_ctrl = TextEditingController(text: "Text Editing Contr");
    b_ctrl = TextEditingController(text: "num ctrl");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: b_ctrl,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              onChanged: (deger) {
                print("yazıyor...: $deger");
              },
              onSubmitted: (deger) {
                print("onaylandı: $deger");
              },
            ),
            SizedBox(height: 30),
            TextField(
              //const yazıldığında hata veriyor?
              decoration: InputDecoration(
                  label: Text("email"),
                  hintText: "email giriniz",
                  prefixIcon: Icon(Icons.email_rounded),
                  suffixIcon: Icon(Icons.turn_left),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  filled: true,
                  fillColor: Colors.purple.shade100),
            ),
            SizedBox(height: 10),
            TextField(
              controller: a_ctrl,
            ),
          ],
        ),
      ),
    );
  }
}
