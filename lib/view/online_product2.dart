import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class OnlineProductTile2 extends StatelessWidget {

  final OnlineProductTile2 onlineProduct2;
  OnlineProductTile2(this.onlineProduct2);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onDoubleTap: () {},
      child: Card(
        elevation: 2,
        child: Container(
          width: double.infinity,
          height: 230,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            // color: Colors.blue,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: CachedNetworkImage(
                      imageUrl:
                          "https://javathree99.com/s271059/littlecakestory/images/product/${onlineProduct2.onlineProduct2}.png",
                      height: 185,
                      width: 185,
                      placeholder: (context, url) => new Transform.scale(
                          scale: 0.5,
                          child: CircularProgressIndicator(
                            color: Colors.blue,
                          )),
                      errorWidget: (context, url, error) => new Icon(
                            Icons.broken_image,
                            size: screenWidth / 3,
                          )),
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 7,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
                      // color: Colors.amberAccent,
                      child: Text(
                        onlineProduct2.onlineProduct2.toString(),
                        style: TextStyle(fontSize: 16),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 2, 0),
                      // color: Colors.amber,
                      child: Text(
                        "RM " ,
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.right,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
                          child: Text("")),
                      Icon(
                        Icons.star_rate,
                        size: 18,
                        color: Colors.orangeAccent,
                      ),
                    ],
                  ),
                  Container(
                    // color: Colors.blue,
                    height: 20,
                    child: MaterialButton(
                      minWidth: 70,
                      // height:18,
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        // cartController.addToOnlineCart(online_product);
                      },
                      child: Text("Add to cart"),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}