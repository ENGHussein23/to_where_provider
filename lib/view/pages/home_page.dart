import 'package:flutter/material.dart';
import 'package:to_where_provider/Controller/Constants/my_colors.dart';
import 'package:to_where_provider/View/Widgets/buttons.dart';
import 'package:to_where_provider/view/widgets/NavigationIcon.dart';
import 'package:to_where_provider/view/widgets/item_container.dart';
import 'package:to_where_provider/view/widgets/my_service.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        bottomNavigationBar: Directionality(
          textDirection: TextDirection.rtl,
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: CircleIcon(Icon(Icons.home)), label: 'الرئيسية'),
              BottomNavigationBarItem(icon: CircleIcon(Icon(Icons.bookmarks_outlined)), label: 'حجوزاتي'),
              BottomNavigationBarItem(icon: CircleIcon(Icon(Icons.percent)), label: 'العروض'),
              BottomNavigationBarItem(icon: CircleIcon(Icon(Icons.person_outline_outlined)), label: 'حسابي'),
            ],
            showUnselectedLabels: true,
            elevation: 15,
            selectedItemColor: Colors.black54,
            selectedIconTheme: IconThemeData(color: Colors.lightBlue),
            selectedLabelStyle: TextStyle(color:Colors.black54,fontWeight: FontWeight.w700),
            unselectedLabelStyle: TextStyle(color:Colors.black12,fontWeight: FontWeight.w700),
            selectedFontSize: 15,
            unselectedFontSize: 10,
            unselectedItemColor: Colors.grey,
          ),
        ),
        body: Center(
        child: Container(
        height: screenHeight-30,
        width: screenWidth-10,
        margin: const EdgeInsets.only(top: 25,bottom: 5,left: 5,right: 5),
        padding: const EdgeInsets.only(top: 0,bottom: 0,left: 10,right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(50, 0, 0, 0),
        ),
        child: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => MyService(),itemCount: 5,)
        )
        )
        )
    );
  }

}