import 'package:flutter/material.dart';
import 'package:modull4/disease_data.dart';


class halaman_detail extends StatelessWidget {
  final Diseases plant;
  const halaman_detail({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Detail"),
      ),
      body: ListView(
        children: [
          Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.height / 2,
              child: Image.network(plant.imgUrls)
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(plant.name),
              Text(plant.id),
              Text(plant.plantName),
              Text(plant.symptom),

            ],
          ),

        ],
      ),
    );
  }
}