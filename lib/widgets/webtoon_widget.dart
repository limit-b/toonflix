import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final WebtoonModel webtoon;

  const Webtoon({
    super.key,
    required this.webtoon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: const Offset(10, 10),
                  blurRadius: 10,
                )
              ],
            ),
            width: 250,
            clipBehavior: Clip.hardEdge,
            child: Image.network(webtoon.thumb),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            webtoon.title,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        ],
      ),
      // onTapUp: (detail) {
      //   print("==> Take me home");
      // },
      onTap: () {
        print("==> Take me home");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              webtoon: webtoon,
            ),
            fullscreenDialog: true,
          ),
        );
      },
    );
  }
}
