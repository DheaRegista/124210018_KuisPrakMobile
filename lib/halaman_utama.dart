import 'package:flutter/material.dart';
import 'package:modull4/halaman_detail.dart';
import 'package:modull4/disease_data.dart';


class halaman_utama extends StatelessWidget {
  const halaman_utama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Halaman Utama"),
        ),
        body: ListView.builder(
            itemCount: listDisease.length,
            itemBuilder: (context, index) {
              final Diseases plant = listDisease[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return halaman_detail(plant: plant);
                  }));
                },
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.height / 4,
                        child: Image.network(plant.imgUrls),
                      ),
                      SizedBox(width: 20),
                      Text(plant.name)
                    ],
                  ),
                ),
              );
            }));
  }
}