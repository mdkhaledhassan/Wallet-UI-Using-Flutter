import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:wallet/my_wallet.dart';

class Search_Screen extends StatefulWidget {
  const Search_Screen({super.key});

  @override
  State<Search_Screen> createState() => _Search_ScreenState();
}

class _Search_ScreenState extends State<Search_Screen> {
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
              //background image
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
                    padding: const EdgeInsets.only(left: 17, right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //notification image
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

                        //search bar
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

                        //file image
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

                  //Results for CSD text section
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Text('Results for CSD',
                        style: GoogleFonts.ubuntu(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            letterSpacing: -1.9)),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //slider section
                  Container(
                    height: 400,
                    child: CarouselSlider.builder(
                      itemCount: 3,
                      itemBuilder: (context, index, Index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                              width: 315,
                              height: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'assets/images/slider.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                      top: 237,
                                      left: 16,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'John Doe',
                                                style: GoogleFonts.ubuntu(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 24,
                                                    letterSpacing: -1.9),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              SvgPicture.asset(
                                                  'assets/icons/verify.svg')
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Problem solver | Expert in FMCG | CSD',
                                            style: GoogleFonts.ubuntu(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                letterSpacing: -1.1),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Work at: Bangladesh Programming Ltd\nStudied from: Bangladesh University of Science\nFrom: Dhaka, Bangladesh',
                                            style: GoogleFonts.ubuntu(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 11,
                                              letterSpacing: -1.1,
                                            ),
                                          ),
                                        ],
                                      ))
                                ],
                              )),
                        );
                      },
                      options: CarouselOptions(
                        scrollDirection: Axis.horizontal,
                        height: 400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //button option
                  InkWell(
                    onTap: () {},
                    child: Center(
                      child: Container(
                        height: 60,
                        width: 340,
                        decoration: BoxDecoration(
                            color: Color(0xffF42A41),
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/icons/follow.svg'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Follow John',
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  letterSpacing: -1.9),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
