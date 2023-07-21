import "package:flutter/material.dart";
import 'main.dart';
import 'jemaat.dart';
import 'font_style.dart';

class DaftarJemaatRoute extends StatelessWidget {
  const DaftarJemaatRoute({super.key});

  static const List<Map<String, dynamic>> _jemaat = [
    {"id": 1, "name": "Victor Imannuel Kartika", "age": 22},
    {"id": 2, "name": "Yobel Abetnego", "age": 26},
    {"id": 3, "name": "Yosia Dwi Nugroho", "age": 18},
    {"id": 4, "name": "Jose Manuel Kartika", "age": 14},
    {"id": 5, "name": "Almendo", "age": 15},
    {"id": 6, "name": "Tithania Nada Christina", "age": 26},
    {"id": 7, "name": "Resamuel Fiergo", "age": 20},
    {"id": 8, "name": "Rahel Dyah", "age": 14},
    {"id": 9, "name": "Clarissa", "age": 14},
    {"id": 10, "name": "Rani", "age": 14},
    {"id": 11, "name": "Ricky", "age": 24},
    {"id": 12, "name": "Ricko", "age": 21},
    {"id": 13, "name": "Mikha", "age": 11},
    {"id": 14, "name": "Hana", "age": 11},
    {"id": 15, "name": "Radit", "age": 9},
    {"id": 16, "name": "Yoel", "age": 9},
    // {"id": , "name": "", "age": },
  ];

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Jemaat'),
      ),
      body: Container(
        padding: const EdgeInsets.all(7),
        child:
          Column(
            children: <Widget> [
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Cari', suffixIcon: Icon(Icons.search)
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Padding(
              //       padding: EdgeInsets.only(top: 2),
              //     ),
              Expanded(
                child: ListView.builder(
                  itemCount: _jemaat.length,
                  itemBuilder: (context, index) {
                    return MyJemaat(
                      id: _jemaat[index]['id'],
                      name: _jemaat[index]['name'],
                      age: _jemaat[index]['age'],
                    );
                  }
                ),
              )
            ],
          ),
            // Center(
            //   child: ElevatedButton(
            //     onPressed: () {
            //       Navigator.pop(context);
            //     },
            //     child: const Text('Go back!'),
            //   ),
            // ),
        )
      // body: ListView.builder(
      //   itemCount: _jemaat.length,
      //   itemBuilder: (context, index) {
      //     return MyJemaat();
      //   },
      // ),
    );
  }
}

