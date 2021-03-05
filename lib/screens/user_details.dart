import 'package:flutter/material.dart';
import 'item_reviews_page.dart';

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:material_kit_flutter/constants/Theme.dart';
import 'package:material_kit_flutter/widgets/photo-album.dart';

List<String> imgArray = [
  "https://images.unsplash.com/photo-1508264443919-15a31e1d9c1a?fit=crop&w=240&q=80",
  "https://images.unsplash.com/photo-1497034825429-c343d7c6a68f?fit=crop&w=240&q=80",
  "https://images.unsplash.com/photo-1487376480913-24046456a727?fit=crop&w=240&q=80",
  "https://images.unsplash.com/photo-1494894194458-0174142560c0?fit=crop&w=240&q=80",
  "https://images.unsplash.com/photo-1500462918059-b1a0cb512f1d?fit=crop&w=240&q=80",
  "https://images.unsplash.com/photo-1542068829-1115f7259450?fit=crop&w=240&q=80"
];

class UserDetailsPage extends StatefulWidget
{
  @override
  _UserDetailsPageState createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar
          (
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton
            (
            color: Colors.black,
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back, color: Colors.black),
          ),
          title: Text('Details', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
          // actions: <Widget>
          // [
          //   Container
          //   (
          //     margin: EdgeInsets.only(right: 8.0),
          //     child: Row
          //     (
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: <Widget>
          //       [
          //         Text('beclothed.com', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14.0)),
          //         Icon(Icons.arrow_drop_down, color: Colors.black54)
          //       ],
          //     ),
          //   )
          // ],
        ),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage(
                          "assets/img/blank-profile.png"),
                      fit: BoxFit.fitWidth)),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.9),
                      ])),
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.50,
              ),
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Text("Louis Guiamatsia",
                        style: TextStyle(fontSize: 28, color: Colors.white)),
                  ),
                  /*Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 6),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: MaterialColors.label),
                                child: Text("Pro",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text("Seller",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16)),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 4.0),
                                child: Text("4.8",
                                    style: TextStyle(
                                        color: MaterialColors.warning,
                                        fontSize: 16)),
                              ),
                              Icon(Icons.star_border,
                                  color: MaterialColors.warning, size: 20)
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(Icons.pin_drop,
                                color: MaterialColors.muted),
                          ),
                          Text("Los Angeles, CA",
                              style: TextStyle(color: MaterialColors.muted))
                        ],
                      )
                    ],
                  )*/
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 8,
                            blurRadius: 10,
                            offset: Offset(0, 0))
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(13.0),
                        topRight: Radius.circular(13.0),
                      )),
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.58,
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text("@lguiamatsia",
                                    style:
                                    TextStyle(color: MaterialColors.muted)),
                                SizedBox(
                                  height: 6,
                                ),
                                Text("+18472712357",
                                    style:
                                    TextStyle(color: MaterialColors.muted)),
                                SizedBox(
                                  height: 6,
                                ),
                                Text("	lm@intekor.ca",
                                    style:
                                    TextStyle(color: MaterialColors.muted))
                              ],
                            ),
                            Column(
                              children: [
                                Text("Administrateur",
                                    style:
                                    TextStyle(color: MaterialColors.muted)),
                                SizedBox(
                                  height: 6,
                                ),
                                Text("Active",
                                    style:
                                    TextStyle(color: MaterialColors.muted)),
                                SizedBox(
                                  height: 6,
                                ),
                                Text("Feb 18, 2021",
                                    style:
                                    TextStyle(color: MaterialColors.muted))
                              ],
                            ),
                          ],
                        ),
                       /* PhotoAlbum(imgArray: imgArray)*/
                      ],
                    ),
                  )),
            )
          ],
        ));
  }
}

class ShopItem extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Padding
      (
      padding: EdgeInsets.only(bottom: 16.0),
      child: Stack
        (
        children: <Widget>
        [
          /// Item card
          Align
            (
            alignment: Alignment.topCenter,
            child: SizedBox.fromSize
              (
                size: Size.fromHeight(172.0),
                child: Stack
                  (
                  fit: StackFit.expand,
                  children: <Widget>
                  [
                    /// Item description inside a material
                    Container
                      (
                      margin: EdgeInsets.only(top: 24.0),
                      child: Material
                        (
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(12.0),
                        shadowColor: Color(0x802196F3),
                        color: Colors.white,
                        child: InkWell
                          (
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => ItemReviewsPage())),
                          child: Padding
                            (
                            padding: EdgeInsets.all(24.0),
                            child: Column
                              (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>
                              [
                                /// Title and rating
                                Column
                                  (
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>
                                  [
                                    Text('Nike Jordan III', style: TextStyle(color: Colors.blueAccent)),
                                    Row
                                      (
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>
                                      [
                                        Text('4.6', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
                                        Icon(Icons.star, color: Colors.black, size: 24.0),
                                      ],
                                    ),
                                  ],
                                ),
                                /// Infos
                                Row
                                  (
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>
                                  [
                                    Text('Bought', style: TextStyle()),
                                    Padding
                                      (
                                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Text('1,361', style: TextStyle(fontWeight: FontWeight.w700)),
                                    ),
                                    Text('times for a profit of', style: TextStyle()),
                                    Padding
                                      (
                                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Material
                                        (
                                        borderRadius: BorderRadius.circular(8.0),
                                        color: Colors.green,
                                        child: Padding
                                          (
                                          padding: EdgeInsets.all(4.0),
                                          child: Text('\$ 13K', style: TextStyle(color: Colors.white)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    /// Item image
                    Align
                      (
                      alignment: Alignment.topRight,
                      child: Padding
                        (
                        padding: EdgeInsets.only(right: 16.0),
                        child: SizedBox.fromSize
                          (
                          size: Size.fromRadius(54.0),
                          child: Material
                            (
                            elevation: 20.0,
                            shadowColor: Color(0x802196F3),
                            shape: CircleBorder(),
                            child: Image.asset('res/shoes1.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
            ),
          ),
          /// Review
          Padding
            (
            padding: EdgeInsets.only(top: 160.0, left: 32.0),
            child: Material
              (
              elevation: 12.0,
              color: Colors.transparent,
              borderRadius: BorderRadius.only
                (
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Container
                (
                decoration: BoxDecoration
                  (
                    gradient: LinearGradient
                      (
                        colors: [ Color(0xFF84fab0), Color(0xFF8fd3f4) ],
                        end: Alignment.topLeft,
                        begin: Alignment.bottomRight
                    )
                ),
                child: Container
                  (
                  margin: EdgeInsets.symmetric(vertical: 4.0),
                  child: ListTile
                    (
                    leading: CircleAvatar
                      (
                      backgroundColor: Colors.purple,
                      child: Text('AI'),
                    ),
                    title: Text('Ivascu Adrian ★★★★★', style: TextStyle()),
                    subtitle: Text('The shoes were shipped one day before the shipping date, but this wasn\'t at all a problem :). The shoes are very comfortable and good looking', maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle()),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BadShopItem extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Padding
      (
      padding: EdgeInsets.only(bottom: 16.0),
      child: Stack
        (
        children: <Widget>
        [
          /// Item card
          Align
            (
            alignment: Alignment.topCenter,
            child: SizedBox.fromSize
              (
                size: Size.fromHeight(172.0),
                child: Stack
                  (
                  fit: StackFit.expand,
                  children: <Widget>
                  [
                    /// Item description inside a material
                    Container
                      (
                      margin: EdgeInsets.only(top: 24.0),
                      child: Material
                        (
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(12.0),
                        shadowColor: Color(0x802196F3),
                        color: Colors.transparent,
                        child: Container
                          (
                          decoration: BoxDecoration
                            (
                              gradient: LinearGradient
                                (
                                  colors: [ Color(0xFFDA4453), Color(0xFF89216B) ]
                              )
                          ),
                          child: Padding
                            (
                            padding: EdgeInsets.all(24.0),
                            child: Column
                              (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>
                              [
                                /// Title and rating
                                Column
                                  (
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>
                                  [
                                    Text('Nike Jordan III', style: TextStyle(color: Colors.white)),
                                    Row
                                      (
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>
                                      [
                                        Text('1.3', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.w700, fontSize: 34.0)),
                                        Icon(Icons.star, color: Colors.amber, size: 24.0),
                                      ],
                                    ),
                                  ],
                                ),
                                /// Infos
                                Row
                                  (
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>
                                  [
                                    Text('Bought', style: TextStyle(color: Colors.white)),
                                    Padding
                                      (
                                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Text('3', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
                                    ),
                                    Text('times for a profit of', style: TextStyle(color: Colors.white)),
                                    Padding
                                      (
                                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Material
                                        (
                                        borderRadius: BorderRadius.circular(8.0),
                                        color: Colors.green,
                                        child: Padding
                                          (
                                          padding: EdgeInsets.all(4.0),
                                          child: Text('\$ 363', style: TextStyle(color: Colors.white)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    /// Item image
                    Align
                      (
                      alignment: Alignment.topRight,
                      child: Padding
                        (
                        padding: EdgeInsets.only(right: 16.0),
                        child: SizedBox.fromSize
                          (
                          size: Size.fromRadius(54.0),
                          child: Material
                            (
                            elevation: 20.0,
                            shadowColor: Color(0x802196F3),
                            shape: CircleBorder(),
                            child: Image.asset('res/shoes1.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
            ),
          ),
          /// Review
          Padding
            (
            padding: EdgeInsets.only(top: 160.0, right: 32.0,),
            child: Material
              (
              elevation: 12.0,
              color: Colors.white,
              borderRadius: BorderRadius.only
                (
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Container
                (
                margin: EdgeInsets.symmetric(vertical: 4.0),
                child: ListTile
                  (
                  leading: CircleAvatar
                    (
                    backgroundColor: Colors.purple,
                    child: Text('AI'),
                  ),
                  title: Text('Ivascu Adrian ★☆☆☆☆'),
                  subtitle: Text('The shoes that arrived weren\'t the same as the ones in the image...', maxLines: 2, overflow: TextOverflow.ellipsis),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NewShopItem extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Padding
      (
      padding: EdgeInsets.only(bottom: 16.0),
      child: Align
        (
        alignment: Alignment.topCenter,
        child: SizedBox.fromSize
          (
            size: Size.fromHeight(172.0),
            child: Stack
              (
              fit: StackFit.expand,
              children: <Widget>
              [
                /// Item description inside a material
                Container
                  (
                  margin: EdgeInsets.only(top: 24.0),
                  child: Material
                    (
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(12.0),
                    shadowColor: Color(0x802196F3),
                    color: Colors.white,
                    child: Padding
                      (
                      padding: EdgeInsets.all(24.0),
                      child: Column
                        (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          /// Title and rating
                          Column
                            (
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>
                            [
                              Text('[New] Nike Jordan III', style: TextStyle(color: Colors.blueAccent)),
                              Row
                                (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                  Text('No reviews', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
                                ],
                              ),
                            ],
                          ),
                          /// Infos
                          Row
                            (
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>
                            [
                              Text('Bought', style: TextStyle()),
                              Padding
                                (
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                child: Text('0', style: TextStyle(fontWeight: FontWeight.w700)),
                              ),
                              Text('times for a profit of', style: TextStyle()),
                              Padding
                                (
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                child: Material
                                  (
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.green,
                                  child: Padding
                                    (
                                    padding: EdgeInsets.all(4.0),
                                    child: Text('\$ 0', style: TextStyle(color: Colors.white)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                /// Item image
                Align
                  (
                  alignment: Alignment.topRight,
                  child: Padding
                    (
                    padding: EdgeInsets.only(right: 16.0),
                    child: SizedBox.fromSize
                      (
                      size: Size.fromRadius(54.0),
                      child: Material
                        (
                        elevation: 20.0,
                        shadowColor: Color(0x802196F3),
                        shape: CircleBorder(),
                        child: Image.asset('res/shoes1.png'),
                      ),
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}