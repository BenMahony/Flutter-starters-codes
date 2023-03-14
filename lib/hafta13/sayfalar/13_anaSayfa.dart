import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class anaSayfaOrnk extends StatefulWidget {
  const anaSayfaOrnk({Key? key}) : super(key: key);

  @override
  State<anaSayfaOrnk> createState() => _anaSayfaOrnkState();
}

class _anaSayfaOrnkState extends State<anaSayfaOrnk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Öğrenci uygulama"),
      ),
      body: ListView(
        reverse: true,
        children: [
          ListTile(
            title: Text("halil can"),
            subtitle: Text("aldığı not"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80"),
            ),
            trailing: Icon(Icons.add_a_photo),
          ),
          ListTile(
            title: Text("halil can"),
            subtitle: Text("aldığı not"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80"),
            ),
            trailing: Icon(Icons.add_a_photo),
          ),
          ListTile(
            title: Text("halil can"),
            subtitle: Text("aldığı not"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80"),
            ),
            trailing: Icon(Icons.add_a_photo),
          ),
          ListTile(
            title: Text("halil can"),
            subtitle: Text("aldığı not"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80"),
            ),
            trailing: Icon(Icons.add_a_photo),
          ),
          ListTile(
            title: Text("halil can"),
            subtitle: Text("aldığı not"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80"),
            ),
            trailing: Icon(Icons.add_a_photo),
          ),
          ListTile(
            title: Text("halil can"),
            subtitle: Text("aldığı not"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80"),
            ),
            trailing: Icon(Icons.add_a_photo),
          ),
          ListTile(
            title: Text("halil can"),
            subtitle: Text("aldığı not"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80"),
            ),
            trailing: Icon(Icons.add_a_photo),
          ),
          ListTile(
            title: Text("halil can"),
            subtitle: Text("aldığı not"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80"),
            ),
            trailing: Icon(Icons.add_a_photo),
          ),
          ListTile(
            title: Text("halil can"),
            subtitle: Text("aldığı not"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80"),
            ),
            trailing: Icon(Icons.add_a_photo),
          ),
          ListTile(
            title: Text("halil can"),
            subtitle: Text("aldığı not"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80"),
            ),
            trailing: Icon(Icons.add_a_photo),
          ),
          ListTile(
            title: Text("halil can"),
            subtitle: Text("aldığı not"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80"),
            ),
            trailing: Icon(Icons.add_a_photo),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("data"),
          )
        ],
      ),
    );
  }
}
