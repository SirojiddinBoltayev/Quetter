import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quetter/views/screens/intro_page2.dart';

class FintroPage extends StatelessWidget {
  const FintroPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/intro_background.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Spacer(),
                const Text(
                  'Har lahzangizni jonlantiring!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 10/1),
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      "Har lahzangizni jonlantiring! Har bir lahzangizdan ilhomlaning, hayot yo'lingizni faqat siz uchun atalgan iqtiboslar bilan rivojlantiring!",
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                  totalRepeatCount: 1,
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () async {
                    Navigator.of(context).pushReplacement(
                      PageTransition(
                        child: SIntroPage(),
                        type: PageTransitionType.fade,
                        curve: Curves.linear,
                        duration: const Duration(seconds: 1),
                      ),
                    );
                  },
                  child: Container(
                    width: size.width,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment(-1.4, -1.0),
                          end: Alignment(1.0, 1.0),
                          colors: [
                            Color(0xFF273447),
                            Color(0xFF36455A),
                            Color(0xFF7C8290),
                            Color(0xFFB5A69F),
                          ],
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.90, 0.0),
                            blurRadius: 1.0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20)),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Motivatsiya uchquni',
                          style: TextStyle(letterSpacing: 2, fontWeight: FontWeight.w600, color: Color(0xff1D1D25), fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
