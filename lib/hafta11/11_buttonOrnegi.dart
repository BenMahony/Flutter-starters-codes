import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class buttonOrnk11 extends StatelessWidget {
  const buttonOrnk11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextButton(
              onPressed: () {
                print("text buton çalıştı");
              },
              onLongPress: () {
                print("butona uzun basıldı");
              },
              child: const Text(
                "text buton",
                style: TextStyle(fontSize: 28),
              )),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.ac_unit),
              label: Text("text buton")),
          ElevatedButton(
            onPressed: () {},
            child: Text("elevated buton"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                foregroundColor: MaterialStateProperty.all(Colors.purple),
                overlayColor: MaterialStateProperty.all(Colors.green)),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.gamepad),
            label: Text("Sakın Basma"),
            style: ElevatedButton.styleFrom(
              primary: Colors.yellow,
              onPrimary: Colors.black,
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("outline buton"),
            style: OutlinedButton.styleFrom(
              shape: const StadiumBorder(
                  side: BorderSide(
                width: 15,
                color: Colors.yellow,
              )),
            ),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add_link),
            label: Text("outlined buton"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("elevated buton 2"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.black;
                  }
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.red;
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
