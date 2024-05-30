import 'package:flutter/material.dart';

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  // Custom Style Text
  static const TextStyle customStyleHeader = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle customStyle = TextStyle(fontSize: 16, decoration: TextDecoration.underline);

  @override
  Widget build(BuildContext context) {

    // Screen Dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Apresentação'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: screenWidth * 0.7,
          height: screenHeight * 0.5,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 2.0),
            borderRadius: BorderRadius.circular(12.0),
          ), //  
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/37051453?v=4"),
                  radius: 100,
                ),
                SizedBox(height: 12),
                Text("Rodrigo Elyel Costa Batista", style: customStyleHeader),
                Text("Matrícula: 2023111EPDMD0049", style: customStyle),
                Text("Idade: 25", style: customStyle),
                Text("Profissão: Desenvolvedor de Software", style: customStyle)
              ],
            )
          ),
        ),
      ),
    );
  }
}