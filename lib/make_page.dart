import 'package:flutter/material.dart';

import 'home_page.dart';

Widget makePage({images, title, description, page}) {
  String pageString = page.toString();
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(images),
        fit: BoxFit.cover,
      ),
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.black, Colors.black],
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                pageString,
                style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Text(
                '/' + totalPage.toString(),
                style: const TextStyle(fontSize: 25, color: Colors.white),
              )
            ],
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 3),
                    child: const Icon(
                      Icons.star,
                      color: Colors.orangeAccent,
                      size: 25,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 3),
                    child: const Icon(
                      Icons.star,
                      color: Colors.orangeAccent,
                      size: 25,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 3),
                    child: const Icon(
                      Icons.star,
                      color: Colors.orangeAccent,
                      size: 25,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 3),
                    child: const Icon(
                      Icons.star,
                      color: Colors.orangeAccent,
                      size: 25,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 3),
                    child: const Icon(
                      Icons.star,
                      color: Colors.grey,
                      size: 25,
                    ),
                  ),
                  const Text(
                    '4.0',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Text(
                    '(2300)',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
              Text(
                description,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              )
            ],
          ))
        ],
      ),
    ),
  );
}
