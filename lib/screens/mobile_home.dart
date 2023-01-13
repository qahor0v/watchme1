import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:watchme/constants.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: width,
                  height: height * 0.6,
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
                Container(
                  width: width,
                  height: height * 0.6,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.transparent,
                        const Color(0xff38404b).withOpacity(0.4),
                        const Color(0xff38404b).withOpacity(0.6),
                        const Color(0xff38404b).withOpacity(0.8),
                        const Color(0xff38404b).withOpacity(0.85),
                        const Color(0xff38404b).withOpacity(0.9),
                        const Color(0xff38404b).withOpacity(0.95),
                        const Color(0xff38404b),
                        //  const Color(0xff38404b),
                        //  const Color(0xff38404b),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "WatchMe",
                        style: TextStyle(
                          color: Colors.redAccent.withBlue(150),
                          fontWeight: FontWeight.w900,
                          fontSize: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          right: 50,
                          top: 20,
                          bottom: 20,
                        ),
                        child: Text(
                          "Sevimli film va seriallaringizni istalgan payt, istalgan joyda tomosha qiling!",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.52,
              width: width,
              // color: Colors.red,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: mainColor.withOpacity(0.5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(2, 2)),
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(images[index]),
                      ),
                    ),
                  );
                },
                itemCount: images.length,
              ),
            ),
            SizedBox(
              height: height * 0.15,
              width: width,
              child: Center(
                child: Container(
                  margin:
                      EdgeInsets.only(left: width * 0.2, right: width * 0.2),
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 12,
                    bottom: 12,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(2, 2),
                        ),
                      ]),
                  child: MaterialButton(
                    onPressed: () async {
                      if (!await launchUrl(Uri.parse(dlUrl))) {
                        throw 'Could do not download';
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.android,
                          color: Colors.green,
                          size: 36,
                        ),
                        SizedBox(width: 6),
                        Text(
                          "Yuklab Olish",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.1,
              width: width,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () async {
                        if (!await launchUrl(Uri.parse(github))) {
                          throw 'Could do not download';
                        }
                      },
                      child: SizedBox(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              TablerIcons.brand_github,
                              size: 32,
                              color: Colors.white,
                            ),
                            Text(
                              " GitHub",
                              style: TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    MaterialButton(
                      onPressed: () async {
                        if (!await launchUrl(Uri.parse(tg))) {
                          throw 'Could do not download';
                        }
                      },
                      child: SizedBox(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              TablerIcons.info_circle,
                              size: 32,
                              color: Colors.white,
                            ),
                            Text(
                              "  Biz Haqimizda",
                              style: TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
