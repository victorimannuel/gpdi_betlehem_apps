import 'package:flutter/material.dart';
import 'package:gpdi_betlehem_apps/custom_colors.dart';


class MyJemaat extends StatelessWidget {
  final int id;
  final String name;
  final int age;

  const MyJemaat({required this.id, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Card(
      key: ValueKey(this.id),
      color: Colors.blue,
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        leading: Text(
          this.id.toString(),
          style: const TextStyle(fontSize: 24, color: Colors.white),
        ),
        title: Text(this.name,
          style: TextStyle(color: Colors.white)),
        subtitle: Text('${this.age.toString()} years old',
          style: TextStyle(color: Colors.white)),
      ),
      // return MyJemaat(
      //   child: _jemaat[index]
      // );
    );
  }
}