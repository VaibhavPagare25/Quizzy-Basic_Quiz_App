import 'package:flutter/material.dart';
import 'package:quizzy/quizzy.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/bg.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 150,
              ),
              Image.asset(
                "assets/images/initial.png",
              ),
              Text(
                "Quizzy",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 60,
                  color: Colors.deepPurple.shade400,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.deepPurple.shade400,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Quizzy(),
                      ),
                    );
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
