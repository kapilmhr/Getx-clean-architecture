import 'package:flutter/material.dart';

import '../../network/ApiUrl.dart';
import '../model/Flower.dart';

class FlowerWidget extends StatelessWidget {
  final Flower _flower;

  FlowerWidget(this._flower);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
      child: Container(
          margin: const EdgeInsets.only(bottom: 10, top: 10, right: 5),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  child: Image.network(
                    ApiUrl.photosUrl + _flower.photo,
                    width: 110,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      _flower.name,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ))
              ],
            ),
          )),
    );
  }
}
