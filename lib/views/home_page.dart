import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "Cloud",
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: CategoryWidget(),
      ),
    );
  }
}
