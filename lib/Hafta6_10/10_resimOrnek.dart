import 'package:flutter/material.dart';

class resimUyg_10 extends StatelessWidget {
  const resimUyg_10({Key? key}) : super(key: key);
  final String url1 =
      "https://upload.wikimedia.org/wikipedia/commons/9/9a/Gull_portrait_ca_usa.jpg";
  final String url3 =
      "https://wallpaperping.com/wp-content/uploads/2018/10/sky-space-moon-outdoors.jpg";
  final String url4 =
      "https://static.bandainamcoent.eu/high/the-dark-pictures/brand-setup/the-dark-pictures_thumb_brand_624x468.jpg";
  final String url2 =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkTQ8DFOgujidIRil33r2QnSZ2Y_ZHahrUlw&usqp=CAU";
  @override
  Widget build(BuildContext context) {
    String url9 =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkTQ8DFOgujidIRil33r2QnSZ2Y_ZHahrUlw&usqp=CAU";

    return Scaffold(
      appBar: AppBar(title: Text("RESİMLER")),
      //body: columnAssets(),
      //body: columnUrl(),
      //body: columnUrl2(),
      //body: columnCircle(),
    );
  }

  Column columnAssets() {
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          child: Image.asset("assets/images/anubis.jpg"),
        ),
        Container(
          width: 150,
          height: 150,
          child: Image.asset(
            "assets/images/face.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 150,
          height: 150,
          color: Colors.red,
          child: Image.asset("assets/images/face.jpg"),
        ),
      ],
    );
  }

  Column columnUrl() {
    return Column(
      children: [
        Container(
          width: 160,
          height: 150,
          color: Colors.blue,
          child: Image.asset(
            "assets/images/anubis.jpg",
          ),
        ),
        Container(
          width: 160,
          height: 160,
          child: Image.asset("assets/images/black.jpg"),
        ),
        Container(
          width: 160,
          height: 160,
          child: Image.network(
            url4,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Column columnUrl2() {
    return Column(
      children: [
        IntrinsicHeight(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                child: Image.network(url1, fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                child: FadeInImage.assetNetwork(
                    placeholder: "assets/images/loading.gif", image: url2),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                child: FadeInImage.assetNetwork(
                    placeholder: "assets/images/loading.gif", image: url3),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/images/loading.gif",
                  image: url4,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        )),
      ],
    );
  }

  Column columnCircle() {
    return Column(
      children: [
        Row(
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage(
                "assets/images/anubis.jpg",
              ),
              radius: 48,
            ),
            CircleAvatar(
              backgroundImage: AssetImage(
                "assets/images/anubis.jpg",
              ),
              radius: 64,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 150,
              height: 150,
              child: Image.asset("assets/images/mask.jpg"),
            )
          ],
        ),
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(url1),
              radius: 32,
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(
                url4,
              ),
              radius: 64,
            ),
          ],
        ),
        Expanded(child: Placeholder(color: Colors.orange))
      ],
    );
  }
}
