import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(100, 20, 100, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/steve.webp'),
            ),
            const Center(
              child: Text(
                'quem sou eu ?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
            const Text(
              'Uma “lenda” envolvendo Minecraft diz que Markus “Notch” Persson, criador original do game, deu nome a Steve por acidente. Alguém perguntou qual seria o nome do boneco do jogo e ele respondeu com um sonoro “sei lá, Steve?”, e assim ficou. Já Alex não tem nenhuma origem para seu nome, seja acidental ou não.',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'hobbies: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'contruir e explorar o mundo quadrado e se meter em varias aventuras absurdas derrotando os boss da vida.',
            ),
            const SizedBox(height: 20),
            // Adding the social media buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSocialButton(
                  'sf',
                  Icons.facebook,
                  Colors.blue,
                ),
                _buildSocialButton(
                  'Ttt',
                  Icons.music_note,
                  Colors.lightBlue,
                ),
                _buildSocialButton(
                  'gjng',
                  Icons.work,
                  Colors.black,
                ),
                _buildSocialButton(
                  'fgbfty',
                  Icons.person,
                  Colors.blueAccent,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
    Widget _buildSocialButton(String label, IconData icon, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ElevatedButton.icon(
        onPressed: () {
          // Define the action for each button here
        },
        icon: Icon(icon, color: Colors.white),
        label: Text(label),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    );
  }
}