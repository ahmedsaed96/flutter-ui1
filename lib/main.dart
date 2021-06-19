import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterui1/fade_animation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Alata'),
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  PageController _pageController;
  int totalPages = 4;

  void _onPressed() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onPressed);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePages(
              page: 1,
              image: AssetImage('assets/images/one.jpg'),
              title: 'Usa',
              description:
                  'qwertyugjcvbmcbm,d;flkb;lcmbdfjdhcjhsvbxchvhhdhjadjhbfdjnvdhabd vdfhdfuierfjdkbv ;kd;flbmdflbm'),
          makePages(
              page: 2,
              image: AssetImage('assets/images/two.jpg'),
              title: 'Usa',
              description:
                  'lkvjsdvmksfajlslksjsj;gkld;giosgkjdfngiautpyqerutjkdfgurhgjfnvneuhamdfvnuhrgjknaaglg;fna;ruhajkcnvejkadf'),
          makePages(
              page: 3,
              image: AssetImage('assets/images/three.jpg'),
              title: 'Usa',
              description:
                  'jfhjksdvsjdvauirevkvakjnc;rhvncvhrovjkdnvarvkcviarcnvorlvdfnv;aixckajsfuiregjhadfbavheruibsdjhkv'),
          makePages(
              page: 4,
              image: AssetImage('assets/images/four.jpg'),
              title: 'Usa',
              description:
                  'dkcsjcksdbyifveriufhshabfdjsfhvjndflsdfnvns  ghagjkfdghh fhgiuahjdfhguhlghfahlgh uhf uihweofHFWEHFJUNERGNJKjdfuvnf '),
        ],
      ),
    );
  }

  Widget makePages({image, title, description, page}) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: image,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3, 0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.1),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  FadeAnimation(
                    0.5,
                    Text(
                      page.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    '/' + totalPages.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimation(
                      0.5,
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    FadeAnimation(
                        0.5,
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 3.0),
                              child: Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.yellow,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 3.0),
                              child: Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.yellow,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 3.0),
                              child: Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.yellow,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 3.0),
                              child: Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.yellow,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 3.0),
                              child: Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              '4.0',
                              style: TextStyle(color: Colors.white70),
                            ),
                            Text(
                              '(2300)',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 13.0),
                            )
                          ],
                        )),
                    SizedBox(
                      height: 20.0,
                    ),
                    FadeAnimation(
                      0.5,
                      Padding(
                        padding: EdgeInsets.only(right: 50.0),
                        child: Text(
                          description,
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              height: 1.9,
                              fontSize: 15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    FadeAnimation(
                      0.5,
                      Text(
                        'READ MORE',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
