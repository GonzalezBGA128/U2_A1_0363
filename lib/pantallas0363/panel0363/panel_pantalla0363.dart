import 'package:flutter/material.dart';
import 'package:gonzalez0363/pantallas0363/panel0363/item_productos0363.dart';

class PanelPantalla0363 extends StatelessWidget {
  const PanelPantalla0363({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white),
          ),
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 15),
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://raw.githubusercontent.com/GonzalezBGA128/Img_IOS/main/logo.png")),
            )
          ],
          title: const Text('Belleza Organica',
              style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xffe0cde7),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.1),
                        spreadRadius: 5,
                        blurRadius: 5)
                  ]),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Que Quieres Ver?",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Color(0xff414040),
                        fontSize: 20),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Color(0xff414040))),
              ),
            ),
            Container(
              height: 180,
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  //borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://raw.githubusercontent.com/GonzalezBGA128/Img_IOS/main/11skincare.jpeg"))),
            ),
            ListTile(
              title: Text("Top Productos"),
              titleTextStyle: Theme.of(context).textTheme.titleLarge,
              trailing: const Icon(Icons.filter_list_outlined),
            ),
            Expanded(
                child: GridView.count(
              padding: EdgeInsets.all(15),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              children: [for (int i = 1; i <= 10; i++) const ItemProductos()],
            ))
          ],
        ));
    ;
  }
}
