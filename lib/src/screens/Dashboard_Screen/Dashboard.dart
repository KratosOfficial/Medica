import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medica/src/screens/Dashboard_Screen/Fragments/Home/home_Fragment.dart';

import '../../contant/image_String.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  int selectedIndex = 0;

  Widget getFragment() {
    if (selectedIndex == 0) {
      return home_Fragment();
    } else if (selectedIndex == 1) {
      return home_Fragment();
    } else if (selectedIndex == 2) {
      return home_Fragment();
    } else if (selectedIndex == 3) {
      return home_Fragment();
    } else if (selectedIndex == 4) {
      return home_Fragment();
    }
    return home_Fragment();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getFragment(),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff3375fe),
          unselectedItemColor: Colors.grey,
          elevation: 0,
          selectedIconTheme: const IconThemeData(color: Color(0xff3375fe)),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          backgroundColor: Colors.transparent,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  khome,
                  width: 30,
                  color: Colors.grey,
                ),
                label: "Home",
                activeIcon: SvgPicture.asset(khomeactive,
                    width: 30, color: Color(0xff3375fe))),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                kappointment,
                width: 30,
                color: Colors.grey,
              ),
              label: "Appointment",
              activeIcon: SvgPicture.asset(kappointmentactive,
                  width: 30, color: Color(0xff3375fe)),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                khistory,
                width: 30,
                color: Colors.grey,
              ),
              label: "History",
              activeIcon: SvgPicture.asset(khistoryactive,
                  width: 30, color: Color(0xff3375fe)),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                karticle,
                width: 30,
                color: Colors.grey,
              ),
              label: "Article",
              activeIcon: SvgPicture.asset(karticleactive,
                  width: 30, color: Color(0xff3375fe)),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                kprofile,
                width: 30,
                color: Colors.grey,
              ),
              label: "Profile",
              activeIcon: SvgPicture.asset(kprofileactive,
                  width: 30, color: Color(0xff3375fe)),
            ),
          ],
          onTap: (val) {
            selectedIndex = val;
            setState(() {});
          },
          currentIndex: selectedIndex,
        ),
      ),
    );
  }
}
