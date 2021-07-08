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
  Color _color=Colors.white;
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
                    color: Color.fromRGBO(237, 138, 97, 1),

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
                            Icons.account_circle_outlined,
                            color: _color,
                            size: 40,
                          ),
                          onPressed: () {
                            setState(() {
                              if(_color==Colors.white){
                                _color=Colors.red;
                              }else{
                                _color=Colors.white;
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MainContainer(147,147),
                        MainContainer(147,147),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MainContainer(147,147),
                        MainContainer(147,147),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MainContainer(147,147),
                        MainContainer(147,147),
                      ],
                    ),
                    Divider(
                      color: Color.fromRGBO(223, 223, 223, 1),
                      thickness: 2.0,
                      indent: 30,
                      endIndent: 30,
                    ),
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

class MainContainer extends StatelessWidget {
  double _height,_width;
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
                image: NetworkImage(
                    "https://s3-alpha-sig.figma.com/img/9fbf/61b2/aec2544c3f78ca6ae35f0336fd355e77?Expires=1626652800&Signature=WxU-HzfKcS9lChzpKTRKrAWVs2F-EuGia7APFCoHfIr~Qpi7-R~~bWkJ5L~UiiHTUcYcMWGWArwV61wiHbdPZ3otJ3usFwgSVCqEtvjJi6mj~b5TmxhsY~8egYSnkYqlsJuLmUUw346hTD2jmIZZl80wYYwBeucruOWVOLNWRf22OKMJBBUDdjTXckDJUstKI7zdMS6ThiUwsjN6U8bwc5RvC38MBPcfQYX0FZCKiRbg8GDpxg7BdIC3~ZWCyzmqCl~goPEPUc8DNFfe7t7dqD4sk22JFztO2Qifz-gfQXyBSoAx0Ka~KV5lbts9eOZQRT4iHQbLqcMy1JLYYIqQoQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 60,bottom: 70),
                  child: Container(
                    alignment: Alignment.topRight,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10), topRight:
                        Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0,),
                          child: Icon(
                            Icons.remove_red_eye_rounded,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            size: 18,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 1.0, left: 1.0),
                          child: Text(
                            "4.2k",
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
        Container(
          height: 40,
          width: 150,
          decoration: BoxDecoration(
            // border: Border.all(color: Colors.black)
          ),
          child: Text("Dian.是點點啦聊  發樓Me快快快...",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15
          ),),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 15,
                width: 15,
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
                margin: EdgeInsets.only(left: 5),
                height: 20,
                width: 80,
                child: Text("翊婕Jessie",style: TextStyle(
                  fontFamily: 'Noto Sans TC',
                  fontWeight: FontWeight.w400,
                ),),
              ),

            ],
          ),
        )
      ],
    );
  }
}