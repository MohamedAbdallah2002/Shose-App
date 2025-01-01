
import 'package:flutter/material.dart';
import 'package:news_app/src/core/style_app/model/card_model.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key, required this.cardModel,
  });
final CardModel cardModel;

@override
  
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          boxShadow:  [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 8,
                    
                    
                  ),
                ],
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(style:const TextStyle(fontWeight: FontWeight.bold),cardModel.title),
            SizedBox(
              height: 30,
              child: Text(
                maxLines: 1,overflow:TextOverflow.ellipsis,
                cardModel.subTitle)),
          ],),
            Expanded(child: Image.network(cardModel.image)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text(cardModel.rating),
              Text(
                style:const TextStyle(fontWeight: FontWeight.bold),
                cardModel.price.toString()),
            ],)
          ],
        ),
      ),
    );
  }
}
