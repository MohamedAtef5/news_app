import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';

class NewsTile extends StatelessWidget {
  final ArticalModel artical;
  const NewsTile({super.key, required this.artical});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(6),
          child: Image(
            image: NetworkImage(
              artical.urlToImage ??
                  "https://mybjj.com.au/wp-content/uploads/2021/12/loading-icon-animated-gif-21.jpg",
            ),
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          artical.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          artical.description ?? "",
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
