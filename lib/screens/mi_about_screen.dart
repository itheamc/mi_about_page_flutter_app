import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mi_about_page/delegate/persistent_header.dart';
import 'package:mi_about_page/utils/clippers.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: APersistentHeader(),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, top: 15.0, right: 7.5, bottom: 15.0),
                    child: Container(
                      height: 275.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Colors.white12,
                      ),
                      child: FractionallySizedBox(
                        widthFactor: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 35.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 90.0,
                                height: 90.0,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 30.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color.fromRGBO(3, 7, 21, 1.0),
                                              Color.fromRGBO(3, 7, 21, 1.0),
                                              Color.fromRGBO(12, 27, 66, 1.0),
                                              Color.fromRGBO(31, 56, 121, 1.0),
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(3.0),
                                          border: Border.all(
                                              width: 2.0,
                                              style: BorderStyle.solid,
                                              color: Colors.white12)),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: ClipPath(
                                        clipper: TriangleClipper(),
                                        clipBehavior: Clip.hardEdge,
                                        child: Container(
                                          width: 60.0,
                                          height: 60.0,
                                          decoration: BoxDecoration(
                                            gradient: const LinearGradient(
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                              colors: [
                                                Color.fromRGBO(3, 7, 21, 1.0),
                                                Color.fromRGBO(
                                                    31, 56, 121, 1.0),
                                              ],
                                            ),
                                            border: Border.all(
                                              width: 2.0,
                                              style: BorderStyle.solid,
                                              color: const Color.fromRGBO(
                                                  56, 3, 3, 0.75),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(60.0),
                                          gradient: const LinearGradient(
                                            begin: Alignment.bottomLeft,
                                            end: Alignment.topRight,
                                            colors: [
                                              Color.fromRGBO(3, 7, 21, 1.0),
                                              Color.fromRGBO(3, 12, 21, 0.70),
                                              Color.fromRGBO(31, 56, 121, 1.0),
                                              Color.fromRGBO(31, 56, 121, 1.0),
                                            ],
                                          ),
                                          border: Border.all(
                                            width: 2.0,
                                            style: BorderStyle.solid,
                                            color: const Color.fromRGBO(
                                                5, 91, 154, 0.5),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Expanded(child: SizedBox()),
                              Text(
                                "MIUI version",
                                style: GoogleFonts.aBeeZee().copyWith(
                                    fontSize: 18.0, color: Colors.white),
                              ),
                              Text(
                                "MIUI Global",
                                style: GoogleFonts.aBeeZee().copyWith(
                                    fontSize: 14.0, color: Colors.white60),
                              ),
                              Text(
                                "12.5.1",
                                style: GoogleFonts.aBeeZee().copyWith(
                                    fontSize: 14.0, color: Colors.white60),
                              ),
                              Text(
                                "Stable",
                                style: GoogleFonts.aBeeZee().copyWith(
                                    fontSize: 14.0, color: Colors.white60),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 275.0,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 7.5, right: 15.0, bottom: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Colors.white12,
                              ),
                              child: FractionallySizedBox(
                                widthFactor: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Device name",
                                        style: GoogleFonts.aBeeZee().copyWith(
                                            fontSize: 18.0,
                                            color: Colors.white),
                                      ),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "Redmi Note 8",
                                        style: GoogleFonts.aBeeZee().copyWith(
                                            fontSize: 14.0,
                                            color: Colors.white60),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 7.5, top: 10.0, right: 15.0, bottom: 0.0),
                            child: Stack(
                              children: [
                                RotatedBox(
                                  quarterTurns: 2,
                                  child: ClipPath(
                                    clipper: WaveClipper(),
                                    clipBehavior: Clip.antiAlias,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16.0),
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    color: Colors.white12,
                                  ),
                                  child: FractionallySizedBox(
                                    widthFactor: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Storage",
                                            style: GoogleFonts.aBeeZee().copyWith(
                                                fontSize: 18.0,
                                                color: Colors.white),
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Occupied",
                                                style: GoogleFonts.aBeeZee()
                                                    .copyWith(
                                                    fontSize: 14.0,
                                                    color: Colors.white54),
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "44.2 GB",
                                                      style: GoogleFonts.aBeeZee()
                                                          .copyWith(
                                                          fontSize: 18.0,
                                                          color: Colors.white),
                                                    ),
                                                    TextSpan(
                                                      text: "/64 GB",
                                                      style: GoogleFonts.aBeeZee()
                                                          .copyWith(
                                                          fontSize: 16.0,
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
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
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "MIUI version",
                      style: GoogleFonts.aBeeZee()
                          .copyWith(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "MIUI Global 12.5.1",
                          style: GoogleFonts.aBeeZee()
                              .copyWith(fontSize: 16.0, color: Colors.white54),
                        ),
                        Text(
                          "Stable",
                          style: GoogleFonts.aBeeZee()
                              .copyWith(fontSize: 16.0, color: Colors.white54),
                        ),
                        Text(
                          "12.5.1.0(RCOINXM)",
                          style: GoogleFonts.aBeeZee()
                              .copyWith(fontSize: 16.0, color: Colors.white54),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Android version",
                      style: GoogleFonts.aBeeZee()
                          .copyWith(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                  Text(
                    "11 RKQ1.201004.002",
                    style: GoogleFonts.aBeeZee()
                        .copyWith(fontSize: 16.0, color: Colors.white54),
                    textAlign: TextAlign.end,
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Android security update",
                      style: GoogleFonts.aBeeZee()
                          .copyWith(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                  Text(
                    "2021-12-01",
                    style: GoogleFonts.aBeeZee()
                        .copyWith(fontSize: 16.0, color: Colors.white54),
                    textAlign: TextAlign.end,
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "All specs",
                      style: GoogleFonts.aBeeZee()
                          .copyWith(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white54,
                    size: 18.0,
                  )
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Divider(color: Colors.white24, height: 2.0,),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Back up and restore",
                      style: GoogleFonts.aBeeZee()
                          .copyWith(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white54,
                    size: 18.0,
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Factory reset",
                      style: GoogleFonts.aBeeZee()
                          .copyWith(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white54,
                    size: 18.0,
                  )
                ],
              ),
            ),
          ),

          const SliverToBoxAdapter(
            child: SizedBox(
              height: 100.0,
            ),
          )

        ],
      ),
    );
  }
}
