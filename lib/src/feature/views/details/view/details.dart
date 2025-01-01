import 'package:flutter/material.dart';
import 'package:news_app/src/core/style_app/app_bar.dart';
import 'package:news_app/src/core/style_app/model/card_model.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.cardModel});
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMyApp(text: "Shoes App"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    cardModel.title),
                SizedBox(
                    height: 30,
                    child: Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        cardModel.subTitle)),
              ],
            ),
            Expanded(child: Image.network(cardModel.image)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(cardModel.rating),
                Text(
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    cardModel.price.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
