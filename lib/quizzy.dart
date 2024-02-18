import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'all_List.dart';

class Quizzy extends StatefulWidget {
  const Quizzy({super.key});

  @override
  State<Quizzy> createState() => _QuizzyState();
}

class ModalClass {
  final String? question;
  final List<String>? options;
  final int? answerIndex;
  const ModalClass({this.question, this.options, this.answerIndex});
}

class _QuizzyState extends State<Quizzy> {
  int selectedIndex = -1;
  int questionIndex = 0;
  int score = 0;
  int screen = 0;

  MaterialStateProperty<Color?> checkAnswer(int option) {
    int answer = allQuestions[questionIndex].answerIndex;
    if (option == answer && selectedIndex == option) {
      score++;
    }
    if (option == answer && selectedIndex == option ||
        (selectedIndex != -1 && option == answer)) {
      return const MaterialStatePropertyAll(Colors.green);
    }
    if (option == selectedIndex) {
      return const MaterialStatePropertyAll(Colors.red);
    }
    return const MaterialStatePropertyAll(null);
  }

  void validatePage() {
    setState(() {
      selectedIndex = -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (screen == 0) {
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
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 35),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Hello Vaibhav",
                    style: TextStyle(
                        color: Colors.indigo.shade800,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Lets play",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Container(
                    height: 150,
                    width: 350,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepPurple.shade400,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepPurple.shade300.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Question : ${questionIndex + 1}/${allQuestions.length}",
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 300,
                          child: Text(
                            allQuestions[questionIndex].question,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: SizedBox(
                    width: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //=============== Option1 =============
                        SizedBox(
                          width: 300,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                ),
                                backgroundColor: checkAnswer(1)),
                            onPressed: () {
                              setState(() {
                                if (selectedIndex == -1) {
                                  selectedIndex = 1;
                                }
                              });
                            },
                            child: Text(
                              allQuestions[questionIndex].options[0],
                              style: TextStyle(
                                color: Colors.deepPurple.shade400,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        //=============== Option2 =============
                        SizedBox(
                          width: 300,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                ),
                                backgroundColor: checkAnswer(2)),
                            onPressed: () {
                              setState(() {
                                if (selectedIndex == -1) {
                                  selectedIndex = 2;
                                }
                              });
                            },
                            child: Text(
                              allQuestions[questionIndex].options[1],
                              style: TextStyle(
                                color: Colors.deepPurple.shade400,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        //=============== Option3 =============
                        SizedBox(
                          width: 300,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                ),
                                backgroundColor: checkAnswer(3)),
                            onPressed: () {
                              setState(() {
                                if (selectedIndex == -1) {
                                  selectedIndex = 3;
                                }
                              });
                            },
                            child: Text(
                              allQuestions[questionIndex].options[2],
                              style: TextStyle(
                                color: Colors.deepPurple.shade400,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        //=============== Option4 =============
                        SizedBox(
                          width: 300,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              backgroundColor: checkAnswer(4),
                            ),
                            onPressed: () {
                              setState(() {
                                if (selectedIndex == -1) {
                                  selectedIndex = 4;
                                }
                              });
                            },
                            child: Text(
                              allQuestions[questionIndex].options[3],
                              style: TextStyle(
                                color: Colors.deepPurple.shade400,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 150,
                        ),
                        //================ Next Button ==================
                        SizedBox(
                          width: 300,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.deepPurple.shade400,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                if (questionIndex < allQuestions.length &&
                                    selectedIndex != -1) {
                                  questionIndex++;
                                }
                                if (questionIndex == allQuestions.length) {
                                  screen = 1;
                                }
                                validatePage();
                              });
                            },
                            child: const Text(
                              "Next",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    } else {
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
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 35),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Quizzy",
                    style: TextStyle(
                        color: Colors.indigo.shade800,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Congratulations",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.purple.shade900,
                        ),
                      ),
                      Image.asset(
                        "assets/images/congratulations.png",
                      ),
                      Text(
                        " You've successfully completed the quiz.",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.purple.shade800,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        //alignment: Alignment.center,
                        height: 120,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.green.shade400,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Your Result",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "$score/",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "${allQuestions.length}",
                                    style: const TextStyle(
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.deepPurple.shade400,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              score = 0;
                              screen = 0;
                              selectedIndex = -1;
                              questionIndex = 0;
                            });
                          },
                          child: const Text(
                            "Start Over",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}
