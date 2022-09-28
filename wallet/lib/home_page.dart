import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet/my_wallet.dart';
import 'package:wallet/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List<Widget> pages = [Search_Screen(), MyWalletScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        alignment: Alignment.bottomCenter,
        color: Colors.white,
        height: 60,
        child: Container(
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //left icon section
              InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                child: Container(
                  height: 23,
                  width: 20,
                  child: SvgPicture.asset('assets/icons/nav_left.svg'),
                ),
              ),
              SizedBox(
                width: 68,
              ),

              //right icon section
              InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
                child: Container(
                  height: 23,
                  width: 20,
                  child: SvgPicture.asset('assets/icons/nav_right.svg'),
                ),
              ),
            ],
          ),
        ),
      ),

      //floating action button
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {},
        backgroundColor: Color(0xffF42A41),
        child: SvgPicture.asset('assets/icons/nav_center.svg'),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
