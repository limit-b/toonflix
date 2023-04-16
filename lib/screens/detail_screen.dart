import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';

class DetailScreen extends StatelessWidget {
  final WebtoonModel webtoon;

  const DetailScreen({
    super.key,
    required this.webtoon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          webtoon.title,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
