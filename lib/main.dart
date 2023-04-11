import 'package:flutter/material.dart';

void main() {
  runApp(const ChallengeUICloneApp());
  // runApp(const App());
}

class ChallengeUICloneApp extends StatelessWidget {
  const ChallengeUICloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 40.0,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    width: 50.0,
                    height: 50.0,
                  ),
                  const Icon(
                    Icons.add,
                    size: 40.0,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 38.0,
              ),
              Row(
                children: [
                  Text(
                    "monday 16".toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14.0,
              ),
              Row(
                children: [
                  Text(
                    "today".toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Icon(
                    Icons.circle,
                    size: 10.0,
                    color: Colors.purple,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Text(
                        "17",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "18",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "19",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              ToDoBox(
                content: "design\nmeeting",
                startHour: "${11}",
                startMin: "${30}",
                endHour: "${12}",
                endMin: "${20}",
                color: Colors.amber,
              ),
              const SizedBox(
                height: 10.0,
              ),
              ToDoBox(
                content: "daily\nproject",
                startHour: "${12}",
                startMin: "${35}",
                endHour: "${14}",
                endMin: "${10}",
                color: Colors.cyan,
              ),
              const SizedBox(
                height: 10.0,
              ),
              ToDoBox(
                content: "weekly\nplanning",
                startHour: "${15}",
                startMin: "${00}",
                endHour: "${16}",
                endMin: "${30}",
                color: Colors.pink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ToDoBox extends StatelessWidget {
  String content;
  String startHour;
  String startMin;
  String endHour;
  String endMin;
  Color color;

  ToDoBox({
    super.key,
    required this.content,
    required this.startHour,
    required this.startMin,
    required this.endHour,
    required this.endMin,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 20,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      startHour.padLeft(2, '0'),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      startMin.padLeft(2, '0'),
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      endHour.padLeft(2, '0'),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      endMin.padLeft(2, '0'),
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    Text(
                      content.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "Hey, Selena.",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Welcome back.",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Total Balance",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: const [
                      Text(
                        "\$5 194 382",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(45),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 20,
                          ),
                          child: Text(
                            "Transfer",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(45),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 20,
                          ),
                          child: Text(
                            "Request",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
