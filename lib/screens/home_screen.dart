import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                "25:00",
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 90.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Center(
              child: IconButton(
                iconSize: 120.0,
                color: Theme.of(context).cardColor,
                onPressed: () {},
                icon: const Icon(
                  Icons.play_circle_outlined,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Pomodors",
                          style: TextStyle(
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "0",
                          style: TextStyle(
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                            fontSize: 58.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
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
