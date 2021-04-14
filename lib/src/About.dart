import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';
import 'package:flutter_icons/flutter_icons.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  bool condition = false;
  double height = 0;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    setState(() {
      condition = false;
      height = 1500;
      Future.delayed(Duration(milliseconds: 400), () {
        setState(() {
          height = 0;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff101010),
      body: Container(
        child: Stack(
          children: [
            SmoothScrollWeb(
              controller: controller,
              child: SingleChildScrollView(
                controller: controller,
                physics: NeverScrollableScrollPhysics(),
                child: Center(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 25.0, right: 25.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                height = MediaQuery.of(context).size.height;
                              });
                              Future.delayed(Duration(milliseconds: 1000), () {
                                Navigator.pop(context);
                              });
                            },
                            child: Container(
                                child: Icon(
                              Icons.clear_rounded,
                              color: Colors.white,
                              size: 35.0,
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Get to know me",
                        style: GoogleFonts.poppins(
                            fontSize: 15.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "About Me",
                        style: GoogleFonts.poppins(
                            fontSize: 46.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      BootstrapRow(height: 600, children: [
                        BootstrapCol(
                          sizes: 'col-md-12 col-lg-4 col-sm-12',
                          child: MediaQuery.of(context).size.width < 992
                              ? CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/3671083/pexels-photo-3671083.jpeg?cs=srgb&dl=pexels-katie-e-3671083.jpg&fm=jpg",
                                  ),
                                  radius:
                                      MediaQuery.of(context).size.width * 0.2)
                              : Container(
                                  height: 500,
                                  child: Image(
                                    image: NetworkImage(
                                      "https://images.pexels.com/photos/3671083/pexels-photo-3671083.jpeg?cs=srgb&dl=pexels-katie-e-3671083.jpg&fm=jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                        ),
                        BootstrapCol(
                          sizes: 'col-md-12 col-lg-8 col-sm-12',
                          child: Container(
                            height: 570.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MediaQuery.of(context).size.width > 992
                                    ? Container()
                                    : SizedBox(
                                        height: 35.0,
                                      ),
                                Text(
                                  "Who am i?",
                                  style: GoogleFonts.poppins(
                                      fontSize: 25.0,
                                      color: Color(0xff009e66),
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                AutoSizeText(
                                  "I\'m Emma Smith, a visual UX/UI Designer and Web Developer",
                                  maxLines: 2,
                                  style: GoogleFonts.poppins(
                                      fontSize: 33.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                AutoSizeText(
                                  "I am a freelancer based in the United Kingdom and i have been building noteworthy UX/UI designs and websites for years, which comply with the latest design trends. I help convert a vision and an idea into meaningful and useful products. Having a sharp eye for product evolution helps me prioritize tasks, iterate fast and deliver faster.",
                                  maxLines: 5,
                                  style: GoogleFonts.poppins(
                                      fontSize: 16.0,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 25.0,
                                ),
                                Container(
                                  width: double.maxFinite,
                                  height: 2.0,
                                  color: Colors.white70,
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: 10.0),
                                    child:
                                        MediaQuery.of(context).size.width > 800
                                            ? Row(
                                                children: [
                                                  Cvcard(
                                                    text1: "Name : ",
                                                    text2: "Emma Smith",
                                                  ),
                                                  Spacer(),
                                                  Cvcard(
                                                    text1: "Mail : ",
                                                    text2: "example@gmail.com",
                                                  ),
                                                ],
                                              )
                                            : Column(
                                                children: [
                                                  Cvcard(
                                                    text1: "Name : ",
                                                    text2: "Emma Smith",
                                                  ),
                                                  Spacer(),
                                                  Cvcard(
                                                    text1: "Mail : ",
                                                    text2: "example@gmail.com",
                                                  ),
                                                ],
                                              )),
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: MediaQuery.of(context).size.width > 800
                                      ? Row(
                                          children: [
                                            Cvcard(
                                              text1: "Age : ",
                                              text2: "21",
                                            ),
                                            Spacer(),
                                            Cvcard(
                                              text1: "From : ",
                                              text2: "LiverPark,UK",
                                            ),
                                          ],
                                        )
                                      : Column(
                                          children: [
                                            Cvcard(
                                              text1: "Age : ",
                                              text2: "21",
                                            ),
                                            Spacer(),
                                            Cvcard(
                                              text1: "From : ",
                                              text2: "LiverPark,UK",
                                            ),
                                          ],
                                        ),
                                ),
                                SizedBox(
                                  height: 35.0,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        color: Color(0xff009e66),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Download CV",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                    MediaQuery.of(context).size.width > 670
                                        ? Container(
                                            color: Colors.white70,
                                            width: 100.0,
                                            height: 1.0,
                                            margin: EdgeInsets.only(
                                                left: 7.0, right: 10.0),
                                          )
                                        : Container(),
                                    MediaQuery.of(context).size.width > 670
                                        ? Row(
                                            children: [
                                              Icon(
                                                AntDesign.twitter,
                                                color: Colors.white70,
                                                size: 18.0,
                                              ),
                                              SizedBox(
                                                width: 15.0,
                                              ),
                                              Icon(
                                                AntDesign.facebook_square,
                                                color: Colors.white70,
                                                size: 18.0,
                                              ),
                                              SizedBox(
                                                width: 15.0,
                                              ),
                                              Icon(
                                                AntDesign.linkedin_square,
                                                color: Colors.white70,
                                                size: 18.0,
                                              ),
                                              SizedBox(
                                                width: 15.0,
                                              ),
                                              Icon(
                                                AntDesign.github,
                                                color: Colors.white70,
                                                size: 18.0,
                                              ),
                                              SizedBox(
                                                width: 15.0,
                                              ),
                                              Icon(
                                                AntDesign.instagram,
                                                color: Colors.white70,
                                                size: 18.0,
                                              ),
                                            ],
                                          )
                                        : Container(),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ]),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "     Services i offer to my clients",
                              style: GoogleFonts.poppins(
                                  fontSize: 15.0,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "  My Services",
                              style: GoogleFonts.poppins(
                                  fontSize: 46.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                          ],
                        ),
                      ),
                      BootstrapRow(height: 300, children: [
                        BootstrapCol(
                          sizes: 'col-sm-12 col-md-12 col-lg-6',
                          child: ServiceCard(
                            icon: AntDesign.CodeSandbox,
                            head: "Design Trends",
                            sub:
                                "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-sm-12 col-md-12 col-lg-6',
                          child: ServiceCard(
                            icon: AntDesign.book,
                            head: "PSD Design",
                            sub:
                                "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-sm-12 col-md-12 col-lg-6',
                          child: ServiceCard(
                            icon: AntDesign.like1,
                            head: "Customer Support",
                            sub:
                                "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-sm-12 col-md-12 col-lg-6',
                          child: ServiceCard(
                            icon: AntDesign.creditcard,
                            head: "Web Development",
                            sub:
                                "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-sm-12 col-md-12 col-lg-6',
                          child: ServiceCard(
                            icon: AntDesign.antdesign,
                            head: "Fully Responsive",
                            sub:
                                "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-sm-12 col-md-12 col-lg-6',
                          child: ServiceCard(
                            icon: AntDesign.piechart,
                            head: "Branding",
                            sub:
                                "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
                          ),
                        ),
                      ]),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "     Get started with my services",
                              style: GoogleFonts.poppins(
                                  fontSize: 15.0,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "  Choose a Plan",
                              style: GoogleFonts.poppins(
                                  fontSize: 46.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: MediaQuery.of(context).size.width < 700
                                    ? MediaQuery.of(context).size.width * 0.6
                                    : MediaQuery.of(context).size.width * 0.9,
                                child: BootstrapRow(
                                  height: 500,
                                  children: [
                                    BootstrapCol(
                                      sizes: 'col-sm-12 col-md-12 col-lg-4',
                                      child: PlanCard(
                                        icon: AntDesign.smile_circle,
                                        btext: "Get Started",
                                      ),
                                    ),
                                    BootstrapCol(
                                      sizes: 'col-sm-12 col-md-12 col-lg-4',
                                      child: PlanCard(
                                        icon: AntDesign.user,
                                        btext: "Get pro",
                                      ),
                                    ),
                                    BootstrapCol(
                                      sizes: 'col-sm-12 col-md-12 col-lg-4',
                                      child: PlanCard(
                                        icon: AntDesign.smile_circle,
                                        btext: "Get Started",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    top: condition ? null : 0,
                    bottom: condition ? 0 : null,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                      onEnd: () {
                        // setState(() {
                        //   condition ? condition = false : condition = true;
                        //   Future.delayed(Duration(milliseconds: 400), () {
                        //     height = 0;
                        //   });
                        // });
                      },
                      height: height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlanCard extends StatefulWidget {
  final IconData icon;
  final String btext;
  PlanCard({this.btext, this.icon});
  @override
  _PlanCardState createState() => _PlanCardState();
}

class _PlanCardState extends State<PlanCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      height: 550,
      color: Color(0xff161616),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icon,
            color: Color(0xff009e66),
            size: 75.0,
          ),
          SizedBox(
            height: 40.0,
          ),
          Text(
            "Mobile App Design",
            style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white70),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Responsive Design",
            style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white70),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Database Development",
            style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white70),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Web Design",
            style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white70),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "24/7 Support",
            style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white70),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            height: 40.0,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xff009e66),
            ),
            child: Center(
              child: Text(
                widget.btext,
                style: GoogleFonts.poppins(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatefulWidget {
  final IconData icon;
  final String head;
  final String sub;

  ServiceCard({
    this.head,
    this.icon,
    this.sub,
  });
  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          hover = true;
          print("true");
        });
      },
      onExit: (value) {
        setState(() {
          hover = false;
          print("false");
        });
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black45,
                    offset: Offset(-1, 1),
                    blurRadius: 5.0,
                    spreadRadius: 0.5)
              ],
              color: Color(0xff161616),
            ),
            margin: EdgeInsets.only(bottom: 50.0),
            height: 230,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 35.0, right: 35, bottom: 30, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        widget.icon,
                        color: Colors.white,
                        size: 50,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        widget.head,
                        style: GoogleFonts.poppins(
                            fontSize: 21.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        widget.sub,
                        style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white70),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                AnimatedContainer(
                  duration: Duration(milliseconds: 170),
                  curve: Curves.easeInOut,
                  height: 2.0,
                  color: !hover ? Color(0xff161616) : Color(0xff009e66),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Cvcard extends StatefulWidget {
  final String text1;
  final String text2;
  Cvcard({this.text2, this.text1});
  @override
  _CvcardState createState() => _CvcardState();
}

class _CvcardState extends State<Cvcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            widget.text1,
            maxLines: 1,
            style: GoogleFonts.poppins(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w400),
          ),
          Text(
            widget.text2,
            maxLines: 1,
            style: GoogleFonts.poppins(
                fontSize: 16.0,
                color: Color(0xff009e66),
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
