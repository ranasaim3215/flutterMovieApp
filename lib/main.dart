import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyCard(),
  ));
}

class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  Color _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("MY APP"),
      // ),
      body: Container(
        child: Column(
          children: [
            Container(
                height: 60,
                margin: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(106, 207, 205, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "熱門頻道聊天室",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 100.0),
                        child: IconButton(
                          icon: Icon(
                            Icons.bookmarks_outlined,
                            color: _color,
                            size: 40,
                          ),
                          onPressed: () {
                            setState(() {
                              if (_color == Colors.white) {
                                _color = Colors.red;
                              } else {
                                _color = Colors.white;
                              }
                            });
                          },
                        ))
                  ],
                )),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  children: [
                    MainContainer(170, 303),
                    MainDivider(),
                    SmallScreens(64, 110.34),
                    MainDivider(),
                    SmallScreens(64, 110.34),
                    MainDivider(),
                    SmallScreens(64, 110.34),
                    MainDivider(),
                    SmallScreens(64, 110.34),
                    MainDivider(),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "查看更多",
                            style: TextStyle(
                              color: Color.fromRGBO(116, 116, 116, 1),
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainDivider extends StatelessWidget {
  const MainDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Color.fromRGBO(223, 223, 223, 1),
      thickness: 2.0,
      indent: 30,
      endIndent: 30,
    );
  }
}

class SmallScreens extends StatelessWidget {
  double _height, _width;

  SmallScreens(this._height, this._width);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: _height,
          width: _width,
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
                image: NetworkImage("https://s3-alpha-sig.figma"
                    ".com/img/a978/8d3e/b8eec9e53a73a1fd0b9e87235bd55422?Expires=1626652800&Signature=TS6JrCIs4n6uWs7iOkOPDYxSt2-XeL0DAbWhVL2ot6PLKX3A5i70djBOwGm56bPQpFvh6b1OST2ocs1prQf2mdkTHrwJwnhRo565wIHDiaFKBDaEJGgMN2InruaLCspidTpwDEubxizvjWVJHpBrpZZyU2x3HL0XrYOr74-1fYRzbnO8~PiCSL7zxOE08IxUTeGg9npj-I9uOQgez41RzDrrCe6wnNUyehYFvdRVpYU0gGDzLmRZ8JSS5tuu6yeKCbffRy6rq9ZPoIZ6qoHwXEtBH9i7EWtF2k0b8NIlQ~GzEbRyBQPb5r8AXv32Q83FDUXMzXC~3kiRRqfSNRTaTg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 20,
                
                decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(3),
                        bottomRight: Radius.circular(3))),
                child: Row(

                  children: [
                    Icon(
                      Icons.remove_red_eye_rounded,
                     size: 15,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    Text(
                      "4.2k",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            children: [
              Container(
                height: 35,
                width: 175,
                decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black)
                    ),
                child: Text("EP159 你是真的不想要，還是害怕做不到..."),
              ),
              Container(
                margin: EdgeInsets.only(right: 75),
                height: 25,
                width: 80,
                child: Text("翊婕Jessie"),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class MainContainer extends StatelessWidget {
  double _height, _width;

  MainContainer(this._height, this._width);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: _height,
          width: _width,
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
                image: NetworkImage("https://s3-alpha-sig.figma"
                    ".com/img/a978/8d3e/b8eec9e53a73a1fd0b9e87235bd55422?Expires=1626652800&Signature=TS6JrCIs4n6uWs7iOkOPDYxSt2-XeL0DAbWhVL2ot6PLKX3A5i70djBOwGm56bPQpFvh6b1OST2ocs1prQf2mdkTHrwJwnhRo565wIHDiaFKBDaEJGgMN2InruaLCspidTpwDEubxizvjWVJHpBrpZZyU2x3HL0XrYOr74-1fYRzbnO8~PiCSL7zxOE08IxUTeGg9npj-I9uOQgez41RzDrrCe6wnNUyehYFvdRVpYU0gGDzLmRZ8JSS5tuu6yeKCbffRy6rq9ZPoIZ6qoHwXEtBH9i7EWtF2k0b8NIlQ~GzEbRyBQPb5r8AXv32Q83FDUXMzXC~3kiRRqfSNRTaTg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 25,
                width: 80,
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 3.0),
                      child: Icon(
                        Icons.remove_red_eye_rounded,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0, left: 4.0),
                      child: Text(
                        "4.2k",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Container(
            height: 40,
            width: 303,
            decoration: BoxDecoration(
                // border: Border.all(color: Colors.black)
                ),
            child: Text(
                "Google 宣布 2021 年 8 月起新 app 將從 APK 轉為使用 Android App Bundle 格式"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 25),
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14)),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  // radius: 5,
                  backgroundImage: NetworkImage(
                      'https://s3-alpha-sig.figma.com/img/0fa6/182c/8492494456b932aa2e5348115482f0f2?Expires=1626652800&Signature=PxyxYXvX9dfwgSgtJD0UhoeH06xTBvfVZ9J5zOsoL~~qOaL2i490H~gj7kf7uL2sXhXnJz-IsfEo-kO1Chmrm2bnHScWBrlecnrLgJ-6~Y25yCtx3pCGacO~ODGQyfLWrhwCq82kJQPwMnsHyx-LhVC4q339sVvJJP~e98elk9l4a9-E1Y3Ts38ihcTrpxU~FD54i2SXovfQzA2a6lyacr0FADjOSSMDX-gr1zz2xC44ilKQhwAlrulKRuTsLSXuXG7vzFg4nE4s1-mUfM405eLmUs9rD764JQBhdB-P4~cXnkcsyP8nH1iMsHG8p1IIbGCeUM1SLvhFw11zr~H29A__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
                ),
              ),
              Container(
                alignment: Alignment.center,


                height: 25,
                width: 80,
                child: Text("翊婕Jessie"),
              ),
            ],
          ),
        )
      ],
    );
  }
}
