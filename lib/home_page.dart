import 'package:ecommerce_project/shirt.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          Container(
            width: MediaQuery.of(context).size.width, // Largura da tela
            height: 400, // Altura fixa
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/header.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20), // Espaçamento de 20 pixels
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20), // Espaçamento de 20 pixels acima do texto
              child: Text(
                'Ofertas Imperdíveis!',
                style: GoogleFonts.poppins(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 20), // Espaçamento de 20 pixels
          // Adicionando o ListView horizontal
           SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  height: 100,
                  width: 200,
                  child: GestureDetector(
              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const Shirt())),
                   child: Card(
                    color: Colors.green[50],
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/alhilal.png', width: 70, height: 70),
                        ),
                        Text(
                          'Camisa Al Hilal Home 23/24',
                          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text('R\$199,99',
                          style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.normal),
                        ),
                      ],
                      ),
                    )
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  height: 100,
                  width: 200,
                  child: Card(
                    color: Colors.blueGrey[100],
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/brasil.png', width: 70, height: 70), 
                        ),
                        Text('Camisa Brasil Home 22/23',
                          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text('R\$199,99',
                          style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  height: 100,
                  width: 200,
                  child: Card(
                    color: Colors.blueGrey[100],
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/psg.png', width: 70, height: 70), 
                        ),
                        Text('Camisa PSG Azul Home 22/23',
                          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text('R\$199,99',
                          style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20), // Espaçamento de 20 pixels
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20), // Espaçamento de 20 pixels acima do texto
              child: Text(
                'Ultimo Lançamento!',
                style: GoogleFonts.poppins(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}