import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWalletScreen extends StatefulWidget {
  const MyWalletScreen({super.key});

  @override
  State<MyWalletScreen> createState() => _MyWalletScreenState();
}

class _MyWalletScreenState extends State<MyWalletScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //app bar
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: SvgPicture.asset('assets/icons/back.svg')),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              //background image section
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: SvgPicture.asset('assets/images/background.svg'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17, right: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //notification section
                        CircleAvatar(
                            radius: 28,
                            backgroundColor: Color(0xffF42A41),
                            child: Stack(
                              children: [
                                SvgPicture.asset(
                                    'assets/icons/notification.svg'),
                                Positioned(
                                    top: 2,
                                    left: 12,
                                    child: Container(
                                      height: 6,
                                      width: 6,
                                      decoration: BoxDecoration(
                                          color: Color(0xff006A4E),
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                    ))
                              ],
                            )),
                        SizedBox(
                          width: 15,
                        ),
                        //search option section
                        Container(
                          width: MediaQuery.of(context).size.width * 0.54,
                          child: TextFormField(
                            controller: searchController,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                    borderSide: BorderSide(
                                        color: Color(0xffF42A41), width: 1)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                    borderSide: BorderSide(
                                        color: Color(0xffF42A41), width: 1)),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffF42A41), width: 1),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 15, bottom: 15, right: 16),
                                  child: Icon(
                                    Icons.search,
                                    color: Color(0xffF42A41),
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Search with keyword...',
                                hintStyle: GoogleFonts.ubuntu(
                                    color: Colors.black,
                                    fontSize: 12,
                                    letterSpacing: -1.1)),
                          ),
                        ),

                        SizedBox(
                          width: 15,
                        ),

                        //file icon section
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Color(0xffF42A41),
                          child: SvgPicture.asset('assets/icons/file.svg'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),

                  //my wallet text section
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Text('My wallet',
                        style: GoogleFonts.ubuntu(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            letterSpacing: -1.9)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //card information
                  Padding(
                    padding: const EdgeInsets.only(left: 17, right: 17),
                    child: Container(
                      height: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: double.infinity,
                            child: Image.asset(
                              'assets/images/card.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, left: 19, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Balance',
                                        style: GoogleFonts.ubuntu(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            letterSpacing: -1.1)),
                                    Row(
                                      children: [
                                        Text('UC',
                                            style: GoogleFonts.ubuntu(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 24)),
                                        Text('1000',
                                            style: GoogleFonts.ubuntu(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 24)),
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                    height: 20,
                                    width: 83,
                                    decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                      child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: 'U',
                                              style: GoogleFonts.inter(
                                                  color: Color(0xff006A4E),
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 12,
                                                  fontStyle: FontStyle.italic)),
                                          TextSpan(
                                              text: 'podesta',
                                              style: GoogleFonts.inter(
                                                  color: Color(0xffF42A41),
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 12,
                                                  fontStyle: FontStyle.italic))
                                        ]),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 138, left: 19, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('John Doe',
                                        style: GoogleFonts.ubuntu(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            letterSpacing: -1.1)),
                                    Row(
                                      children: [
                                        Text('0128 **** **** 8956',
                                            style: GoogleFonts.ubuntu(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 11,
                                                letterSpacing: -1.1)),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        SvgPicture.asset(
                                          'assets/icons/hidden.svg',
                                          height: 10,
                                          width: 12.5,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Text('12 / 23',
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11,
                                        letterSpacing: -1.1)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17, right: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 45,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color(0xffF42A41), width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/cashout.svg'),
                              SizedBox(
                                width: 8,
                              ),
                              Text('Cash Out',
                                  style: GoogleFonts.ubuntu(
                                    color: Color(0xffF42A41),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 45,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color(0xffF42A41), width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/update_info.svg'),
                              SizedBox(
                                width: 8,
                              ),
                              Text('Update info',
                                  style: GoogleFonts.ubuntu(
                                    color: Color(0xffF42A41),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17, right: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Recent transactions',
                            style: GoogleFonts.ubuntu(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            )),
                        SvgPicture.asset(
                          'assets/icons/transactions.svg',
                          height: 16,
                          width: 16,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17, right: 17),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(31)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(31),
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                child: Image.asset(
                                  'assets/images/payment.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 28),
                                child: SvgPicture.asset(
                                    'assets/icons/pay_line.svg'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 25, right: 17),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.white,
                                      child: SvgPicture.asset(
                                          'assets/icons/payment.svg'),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('Cash out via Bkash',
                                            style: GoogleFonts.ubuntu(
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                letterSpacing: -1.1)),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text('At 6.00 PM - 03 January 2022',
                                            style: GoogleFonts.ubuntu(
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.w300,
                                                fontSize: 11,
                                                letterSpacing: -1.1)),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    Text('-1500 BDT',
                                        style: GoogleFonts.ubuntu(
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            letterSpacing: -1.1)),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17, right: 17),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(31)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(31),
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                child: Image.asset(
                                  'assets/images/payment.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 28),
                                child: SvgPicture.asset(
                                    'assets/icons/pay_line.svg'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 25, right: 17),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.white,
                                      child: SvgPicture.asset(
                                          'assets/icons/payment.svg'),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('Cash out via Nogod',
                                            style: GoogleFonts.ubuntu(
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                letterSpacing: -1.1)),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text('At 6.00 PM - 13 January 2022',
                                            style: GoogleFonts.ubuntu(
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.w300,
                                                fontSize: 11,
                                                letterSpacing: -1.1)),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    Text('-1300 BDT',
                                        style: GoogleFonts.ubuntu(
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            letterSpacing: -1.1)),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
