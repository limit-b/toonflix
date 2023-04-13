import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:toonflix/screens/home_screen.dart';

void main() {
  runApp(const MyStlApp());
}

class MyStlApp extends StatelessWidget {
  const MyStlApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const HomeScreen(),
      home: const ChallengeTimer(),
      theme: ThemeData(
        // cardColor: const Color(0xFFF4EDDB),
        // scaffoldBackgroundColor: const Color(0xFFE7626C),
        // textTheme: const TextTheme(
        //     displayLarge: TextStyle(
        //   color: Color(0xFF232B55),
        // )),
        cardColor: Colors.white,
        scaffoldBackgroundColor: const Color(0xFFFF6347),
        textTheme: const TextTheme(
            displayLarge: TextStyle(
          color: Color(0xFF232B55),
        )),
      ),
    );
  }
}

/**
 * 앱은 아래와 같은 기능을 갖고있어야 합니다.
 * 
 * 유저가 타이머의 시간(15, 20, 25, 30, 35)을 선택할 수 있어야 합니다.
 * 유저가 타이머를 재설정 (리셋)할 수 있어야 합니다.
 * 유저가 한 사이클을 완료한 횟수를 카운트해야 합니다.
 * 유저가 4개의 사이클(1라운드)를 완료한 횟수를 카운트해야 합니다.
 * 각 라운드가 끝나면 사용자가 5분간 휴식을 취할 수 있어야 합니다.
 */ ///

class ChallengeTimer extends StatefulWidget {
  const ChallengeTimer({Key? key}) : super(key: key);

  @override
  State<ChallengeTimer> createState() => _ChallengeTimerState();
}

class _ChallengeTimerState extends State<ChallengeTimer> {
  static const twentyFiveMinutes = 1500;

  bool isRunning = false;
  int totalSeconds = twentyFiveMinutes;
  int totalPomodoros = 0;

  late Timer timer;

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        totalPomodoros += 1;
        isRunning = false;
        totalSeconds = twentyFiveMinutes;
      });

      timer.cancel();
    } else {
      setState(() {
        totalSeconds -= 1;
      });
    }
  }

  void onStartPressed() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
    );

    setState(() {
      isRunning = true;
    });
  }

  void onPausedPressed() {
    timer.cancel();

    setState(() {
      isRunning = false;
    });
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);

    return duration.toString().split(".").first.substring(2, 7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "pomotimer".toUpperCase(),
                  style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 28.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const Flexible(
              flex: 4,
              child: Center(),
            ),
            Flexible(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(),
            ),
            Flexible(
              flex: 2,
              child: Container(),
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
            horizontal: 20,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MyButton(),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF888888),
                          borderRadius: BorderRadius.circular(45),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 20,
                          ),
                          child: Text(
                            "Request",
                            style: TextStyle(
                              color: Colors.white,
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

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(45),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 50,
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
    );
  }
}
