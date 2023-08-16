import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TeeScreen extends StatelessWidget {
  const TeeScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 400 / 812,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/one.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 412 / 812,
                ),
              ],
            ),
            Positioned(
              top: 400,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 438 / 812,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 56 / 438),
                        child: RichText(
                          text: TextSpan(
                            text: 'LONDON',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text:
                                    ' — Cryptocurrencies “have no intrinsic\nvalue” and people who invest in them should be\nprepared to lose all their money, Bank of England\nGovernor Andrew Bailey said',
                                style: GoogleFonts.nunito(
                                  color: Color(0xFF1D1D1E),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          ' Digital currencies like bitcoin,ether and even dogecoin\n  have been on a tear this year, reminding some\n  investors of the 2017 crypto bubble in which bitcoin\n  blasted toward 20,000, only to sink as low as 3,122\n  a year later.',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          ' Asked at a press conference Thursday about the\n rising value of cryptocurrencies, Bailey said: “They\n have no intrinsic value. That doesn’t mean to say\n  people don’t put value on them, because they can\n have extrinsic value. But they have no intrinsic value.\n” “I’m going to say this very bluntly again,” he added.\n “Buy them only if you’re prepared to lose all your\n money.” Bailey’s comments echoed a similar warning\n from the U.K.’s Financial Conduct Authority.\n“Investing in cryptoassets,or investments and lending\n linked to them, generally involves taking very high\n risks with investors’ money,” the financial services\n watchdog said in January.“If consumers invest in\n these types of product,they should be prepared to\n lose all their money.” Bailey, who was formerly the \n chief executive of the FCA, has long been a skeptic \n of crypto. In 2017,he warned: “If you want to invest \n in bitcoin, be prepared to lose all your money.”',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.89,
                left: MediaQuery.of(context).size.width * 0.83,
              ),
              width: 80,
              child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Color(0xFFE3066D),
                  shape: CircleBorder(eccentricity: 0),
                  child: Expanded(
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFE3066D),
                      child: SvgPicture.asset(
                        'images/ret.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Color.fromRGBO(206, 200, 203, 1),
                shape: CircleBorder(
                  eccentricity: 0,
                ),
                child: IconButton(onPressed: () {}, icon: BackButtonIcon()),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.1),
                width: MediaQuery.of(context).size.width * 313 / 375,
                height: MediaQuery.of(context).size.height * 155 / 800,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(200, 200, 200, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' Sunday, 9 May 2021',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Crypto investors should be prepared to lose all their money, BOE governor says',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      ' Published by Ryan Browne',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
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
