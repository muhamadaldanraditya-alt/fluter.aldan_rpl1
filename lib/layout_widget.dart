import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: 
        const Text('Profil SMK YPC',
         style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors .indigo
            ),
      ),
      ),
      body: Column(
        children: [
         Center(),
        Image.asset('image/gambar_smk_ypc.png'),//menampilkan gambar
         const SizedBox(height : 10),//jarak antara gambar dan teks
          Text('SMK YPC',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors .indigo
          ),
          ), //ini adalah judul
         const SizedBox(height : 10),//jarak antara gambar dan teks
          Text('XI PPLG 1',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [Icon(Icons.call), Text ('call')],
              ),
              Column(
                children: [Icon(Icons.map), Text ('Route')],
              ),
              Column(
                children: [Icon(Icons.share,), Text ('share')],
              ),
            ],
          )
        ]
      )
    );
  }
}
