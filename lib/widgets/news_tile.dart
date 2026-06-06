import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(6),
          child: const Image(
            image: NetworkImage(
              "https://media.cnn.com/api/v1/images/stellar/prod/nhq202404080101-origa-20260605211815110.JPG?c=original&q=w_1202,c_fill/f_avif",
            ),
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          "Large Title should be placed Large Title should be placedLarge Title should be placedLarge Title should be placedLarge Title should be placed ",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "and here is the description if the news you can plce it here ",
          maxLines: 2,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
