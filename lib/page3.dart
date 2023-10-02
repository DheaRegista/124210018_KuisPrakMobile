import 'package:flutter/material.dart';

class page3 extends StatelessWidget {
  const page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //buat matiin back otomatis
        title: Text("ini halaman 3"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini Page 3"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); //buat kembali ke halaman sebelumnya
                },
                child: Text("Tombol Kembali"))
          ],
        ),
      ),
    );
  }
}