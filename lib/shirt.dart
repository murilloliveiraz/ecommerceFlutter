import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shirt extends StatelessWidget {
  const Shirt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.account_circle_rounded),
        actions: const [
          Icon(Icons.search)
        ],
        backgroundColor: Colors.black,
        foregroundColor: Colors.amber[50],
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20), // Espaçamento de 20 pixels acima do texto
              child: Text(
                'Camisa Al-Hilal Home 23/24',
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 20), 
          Center(
            child: Container(
              width: 300, // Largura da tela
              height: 300, // Altura fixa
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/alhilal.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20), 
           SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text('Tamanhos', style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  width: 40,
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Text('P', style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                    ],
                  ),
                ),
                Container(
                  width: 40,
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Text('M', style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                    ],
                  ),
                ),Container(
                  width: 40,
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Text('G', style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              children: [
                Text(
                  'Informe o CEP:',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                ),
               const TextField(
                    decoration: InputDecoration(
                      hintText: 'Digite aqui',
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}