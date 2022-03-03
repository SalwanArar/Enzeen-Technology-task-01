import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';

Footer footerMainPage(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Footer(
    child: Column(
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _footerFonts('TERM OF USE'),
                  _footerFonts('CONTACT'),
                  _footerFonts('CAREER'),
                  _footerFonts('AREA RANGE'),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.02,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.shopping_bag_outlined,
                      size: 36.0,
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'PROJECT BY',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: ' EZENESS TECHNOLOGY',
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.shopping_bag_outlined),
              Icon(Icons.stars_sharp),
              Icon(Icons.compass_calibration),

            ],
          ),
        ),
      ],
    ),
  );
}

Widget _footerFonts(String txt) {
  return GestureDetector(
    child: Text(
      txt,
      style: TextStyle(
        color: Colors.grey[700],
        fontFamily: 'Montserrat',
        fontSize: 16,
      ),
    ),
  );
}
