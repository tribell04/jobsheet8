import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Center(
          child: Wrap(
            spacing: 2, // Minimal horizontal spacing
            runSpacing: 2, // Minimal vertical spacing
            children: [
              buildKotakDenganNama(
                  Colors.greenAccent, 100, "Tria Bela Sisiliana"),
              buildKotakDenganNama(
                  Colors.orangeAccent[400]!, 70, "Tria Bela Sisiliana"),
              buildKotakDenganNama(
                  Colors.greenAccent, 50, "Tria Bela Sisiliana"),
              buildKotakDenganNama(
                  Colors.orangeAccent[400]!, 90, "Tria Bela Sisiliana"),
              buildKotakDenganNama(
                  Colors.red[300]!, 110, "Tria Bela Sisiliana"),
              buildKotakDenganNama(
                  Colors.blue[300]!, 30, "Tria Bela Sisiliana"),
            ],
          ),
        ),
      ),
    ),
  ));
}

Widget buildKotakDenganNama(Color warna, double ukuran, String nama) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        decoration: BoxDecoration(
          color: warna,
        ),
        height: ukuran,
        width: ukuran,
      ),
      const SizedBox(height: 2), // Minimal vertical spacing
      Text(
        nama,
        style: const TextStyle(
          fontSize: 12, // Reduced font size
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
