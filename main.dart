import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 151, 175, 228),
        title: const Text("Coba coba"),
      ),
      body: const Center(
        child: Text(
          'Pemrograman Perangkat Bergerak',
          style: TextStyle(
            fontFamily: "Arial",
            fontSize: 30,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
            color: Color.fromARGB(255, 215, 173, 220),
          ),
          textAlign: TextAlign.center,
        ),
      ),

      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          child: const Icon(Icons.add),
          backgroundColor: const Color.fromARGB(255, 151, 175, 228),

          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                content: const Text("Berhasil"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("OK"),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    ),
  ));
}