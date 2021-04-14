import 'package:flutter/material.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';
import 'package:google_fonts/google_fonts.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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
                    mainAxisAlignment: MainAxisAlignment.start,
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
                        "Feel free to contact me anytimes",
                        style: GoogleFonts.poppins(
                            fontSize: 15.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Get in Touch",
                        style: GoogleFonts.poppins(
                            fontSize: 46.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 112.0,
                      ),
                      MediaQuery.of(context).size.width > 1000
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MessageMe(),
                                SizedBox(
                                  width: 45.0,
                                ),
                                ContactInfo(),
                              ],
                            )
                          : Column(
                              children: [
                                MessageMe(),
                                SizedBox(
                                  width: 45.0,
                                ),
                                ContactInfo(),
                              ],
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

class MessageMe extends StatefulWidget {
  @override
  _MessageMeState createState() => _MessageMeState();
}

class _MessageMeState extends State<MessageMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: MediaQuery.of(context).size.width > 1000
          ? MediaQuery.of(context).size.width * 0.4
          : MediaQuery.of(context).size.width * 0.65,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Message me",
            style: GoogleFonts.poppins(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              CustomTextFormField(
                hint: "Name",
              ),
              SizedBox(
                width: 25.0,
              ),
              CustomTextFormField(
                hint: "Email",
              ),
            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: 50,
            child: CustomTextFormField(
              hint: "Subject",
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: 200,
            child: CustomTextFormField(
              hint: "Message",
              max: 25,
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Color(0xff009e66),
              ),
              child: Center(
                child: Text(
                  "Send Message",
                  style: GoogleFonts.poppins(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ContactInfo extends StatefulWidget {
  @override
  _ContactInfoState createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: MediaQuery.of(context).size.width > 1000
          ? MediaQuery.of(context).size.width * 0.3
          : MediaQuery.of(context).size.width * 0.65,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Contact Info",
              style: GoogleFonts.poppins(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Always available for freelance work if the right project comes along, Feel free to contact me!",
              style: GoogleFonts.poppins(
                  fontSize: 15.0,
                  color: Colors.white70,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 15.0,
            ),
            ContactCard(
              head: "Name",
              sub: "Emma Smith",
              icon: Icons.assignment_ind_outlined,
            ),
            ContactCard(
                head: "Location",
                sub: "4155 Mann Island, Liverpool, United Kingdom.",
                icon: Icons.location_on),
            ContactCard(
                head: "Call Me",
                sub: "+44 1632 967704",
                icon: Icons.phone_outlined),
            ContactCard(
              head: "Email Me",
              sub: "emma@example.com",
              icon: Icons.send_outlined,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatefulWidget {
  final String hint;
  final int max;
  CustomTextFormField({this.hint, this.max});
  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color(0xff161616),
        child: TextFormField(
          maxLines: widget.max ?? 1,
          scrollPadding: EdgeInsets.all(0),
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.tealAccent),
            ),
            hintText: widget.hint,
            hintStyle: GoogleFonts.poppins(
                color: Color(0xff6c6c6c),
                fontSize: 20.0,
                fontWeight: FontWeight.w500),
            prefix: Container(width: 30.0),
          ),
        ),
      ),
    );
  }
}

class ContactCard extends StatefulWidget {
  final String head;
  final String sub;
  final IconData icon;
  ContactCard({this.head, this.icon, this.sub});
  @override
  _ContactCardState createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width > 1000
          ? MediaQuery.of(context).size.width * 0.3
          : MediaQuery.of(context).size.width * 0.65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            widget.icon,
            size: 35,
            color: Color(0xff009e66),
          ),
          SizedBox(
            width: 20.0,
          ),
          Container(
            width: 3.0,
            color: Color(0xff161616),
          ),
          SizedBox(
            width: 25.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width > 1000
                ? MediaQuery.of(context).size.width * 0.2
                : MediaQuery.of(context).size.width * 0.5 - 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.head,
                  style: GoogleFonts.poppins(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  widget.sub,
                  style: GoogleFonts.poppins(
                      fontSize: 13.0,
                      color: Colors.white70,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
