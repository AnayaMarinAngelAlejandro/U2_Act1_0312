import 'package:anaya0312/pantallas0312/panel0312/item_luchador0312.dart';
import 'package:flutter/material.dart';

class PanelPantalla0312 extends StatelessWidget {
  const PanelPantalla0312({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: const Color(0xffa81b1b),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white)),
        title: const Text(
          "WWE ANAYA0312",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff000000),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/AnayaMarinAngelAlejandro/img_iOS/main/FlutterFlowAct12/empleado.png'),
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xffffffff),
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
                hintText: "Buscar...",
                hintStyle: TextStyle(fontWeight: FontWeight.w300),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search, color: Colors.brown),
              ))),
          Container(
            height: 100,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/AnayaMarinAngelAlejandro/img_iOS/main/FlutterFlowAct12/WWE_FONDO.jpg"))),
          ),
          ListTile(
            title: Text(
              "Top de luchadores",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_outlined),
          ),
          Expanded(
              child: GridView.count(
            padding: EdgeInsets.all(15),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            children: [for (int i = 1; i <= 10; i++) const ItemLuchador()],
          )),
        ],
      ),
    );
  }
}
