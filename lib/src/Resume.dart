import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitzu_webapp/Custom%20Widgets/ResumeCard.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Resume extends StatefulWidget {
  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
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
                physics: NeverScrollableScrollPhysics(),
                controller: controller,
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
                        height: 43.0,
                      ),
                      Text(
                        "Check out my Resume",
                        style: GoogleFonts.poppins(
                            fontSize: 15.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Resume",
                        style: GoogleFonts.poppins(
                            fontSize: 46.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 112.0,
                      ),
                      MediaQuery.of(context).size.width > 950
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ResumeCard("Education"),
                                SizedBox(
                                  width: 75.0,
                                ),
                                ResumeCard("Experience"),
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ResumeCard("Education"),
                                SizedBox(
                                  height: 35.0,
                                ),
                                ResumeCard("Experience"),
                              ],
                            ),
                      SizedBox(
                        height: 120.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7 + 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: double.maxFinite,
                              child: Column(
                                children: [
                                  Text(
                                    "My level of knowledge in some tools",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15.0,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "My Skills",
                                    style: GoogleFonts.poppins(
                                        fontSize: 46.0,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                  MediaQuery.of(context).size.width > 950
                                      ? Row(
                                          children: [
                                            PercentItem(),
                                            SizedBox(
                                              width: 50.0,
                                            ),
                                            PercentItem(),
                                          ],
                                        )
                                      : Column(
                                          children: [
                                            PercentItem(),
                                            SizedBox(
                                              width: 50.0,
                                            ),
                                            PercentItem(),
                                          ],
                                        ),
                                  SizedBox(
                                    height: 100.0,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                            0.7 +
                                        70,
                                    child: BootstrapRow(
                                      height: 350,
                                      children: [
                                        BootstrapCol(
                                          sizes:
                                              'col-12 col-sm-12 col-md-12 col-lg-6',
                                          child: Container(
                                            height: 350.0,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Take a tour of my office",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 25.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white),
                                                ),
                                                SizedBox(
                                                  height: 20.0,
                                                ),
                                                Container(
                                                  height: 350.0 - 60,
                                                  child: AutoSizeText(
                                                    "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia cum quasi assumenda culpa praesentium consectetur voluptatibus expedita. Voluptatem tempore, aspernatur rem facilis, distinctio nemo! Odio velit, nemo dolorem voluptas!\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium qui aspernatur unde mollitia, in laborum.",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Colors.white70),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        BootstrapCol(
                                            sizes:
                                                'col-12 col-sm-12 col-md-12 col-lg-6',
                                            child: Container(
                                              height: 300,
                                              color: Colors.white,
                                              child: Image(
                                                image: NetworkImage(
                                                    "https://images.pexels.com/photos/1918291/pexels-photo-1918291.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                                                fit: BoxFit.cover,
                                              ),
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
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

class PercentItem extends StatefulWidget {
  @override
  _PercentItemState createState() => _PercentItemState();
}

class _PercentItemState extends State<PercentItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PercentCard(
            progress: 0.95,
            text: "HTML/CSS",
          ),
          PercentCard(
            progress: 0.8,
            text: "Web Design",
          ),
          PercentCard(
            progress: 0.9,
            text: "JavaScript",
          ),
        ],
      ),
    );
  }
}

class PercentCard extends StatefulWidget {
  final double progress;
  final String text;
  PercentCard({this.progress, this.text});

  @override
  _PercentCardState createState() => _PercentCardState();
}

class _PercentCardState extends State<PercentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width > 950
          ? MediaQuery.of(context).size.width * 0.3 + 35
          : MediaQuery.of(context).size.width * 0.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 45.0,
          ),
          Text(
            "   ${widget.text}",
            style: GoogleFonts.poppins(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10.0,
          ),
          LinearPercentIndicator(
            percent: widget.progress,
            lineHeight: 8.0,
            animation: true,
            animationDuration: 1000,
            linearStrokeCap: LinearStrokeCap.butt,
            progressColor: Color(0xff009e66),
            backgroundColor: Color(0xff161616),
          ),
        ],
      ),
    );
  }
}
