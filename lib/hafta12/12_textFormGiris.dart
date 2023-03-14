import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class textAreaContorller12 extends StatefulWidget {
  const textAreaContorller12({Key? key}) : super(key: key);

  @override
  State<textAreaContorller12> createState() => _textAreaContorllerState();
}

class _textAreaContorllerState extends State<textAreaContorller12> {
  late TextEditingController numCtrl;
  late FocusNode adSoyadFcs;
  int satirSayisi = 1;

  @override
  void initState() {
    super.initState();
    numCtrl = TextEditingController();
    adSoyadFcs = FocusNode();
    adSoyadFcs.addListener(() {
      setState(() {
        if (adSoyadFcs.hasFocus) {
          satirSayisi = 4;
        } else {
          satirSayisi = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    numCtrl.dispose();
    adSoyadFcs.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        margin: EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              controller: numCtrl,
            ),
            SizedBox(height: 15),
            Text(numCtrl.text),
            SizedBox(height: 10),
            TextField(
              controller: numCtrl,
              decoration:
                  InputDecoration(labelText: "numCTRL", hintText: "numctrl"),
              onChanged: (gelen) {
                //print(gelen);
                setState(() {
                  numCtrl.value = TextEditingValue(
                      text: gelen,
                      selection:
                          TextSelection.collapsed(offset: numCtrl.text.length));
                });
              },
            ),
            SizedBox(height: 15),
            TextField(
              focusNode: adSoyadFcs,
              maxLines: satirSayisi,
              decoration:
                  InputDecoration(labelText: "ad soyad", hintText: "soyad ad"),
            ),
          ],
        ),
      ),
    );
  }
}
