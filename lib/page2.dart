import 'package:flutter/material.dart';
import 'package:modull4/page3.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //buat matiin back otomatis
        title: Text("ini halaman 2"),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini Page 2"),
            OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                        return page3();
                      }));
                },
                child: Text("Ke Page 3")),
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