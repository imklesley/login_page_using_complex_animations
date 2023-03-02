import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  final String title;
  final String subtitle;
  final ImageProvider image;
  EdgeInsets? margin;

  ListData(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.margin,
     })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: const BoxDecoration(
        color: Colors.white,
          border: Border(
              top: BorderSide(color: Colors.black12, width: 1),
              bottom: BorderSide(
                color: Colors.black12,
                width: 1,
              ))),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10,bottom: 10,left: 10, right: 15),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                image: DecorationImage(image: image,fit: BoxFit.cover), shape: BoxShape.circle),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                subtitle,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
              ),
            ],
          )
        ],
      ),
    );
  }
}
