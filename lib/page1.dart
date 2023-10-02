import 'package:flutter/material.dart';
import 'package:modull4/page2.dart';
import 'package:url_launcher/url_launcher.dart';


class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ini halaman 1")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini Page 1"),
            TextButton(
                onPressed: () {
                  _launchUrl("https://spada.upnyk.ac.id/");
                },
                child: Text("Buka url")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, //buat next ke halaman sleanjutnya
                      MaterialPageRoute(builder: (context) {
                        return page2();
                      }));
                },
                child: Text("Ke Page 2"))
          ],
        ),
      ),
    );
  }

  //memindahkan ke halaman luar website
  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Gagal membuka link : ${_url}');
    }
  }
}