import 'package:flutter/material.dart';

class Latihan1 extends StatelessWidget {
  const Latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 300,
        color: Colors.blueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(width: 100, height: 100, color: Colors.redAccent),
            Column(
              children: [
                Text("Nama: Chika"),
                Text("Kelas: XII RPL"),
                Text("NIS: 20552011131"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}