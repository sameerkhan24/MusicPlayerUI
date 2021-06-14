import 'package:flutter/material.dart';
import 'colors.dart';

// ignore: use_key_in_widget_constructors
class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const NavBarItem(
            icon: Icons.arrow_back_ios_new_sharp,
          ),
          Text('Playing Now',style: TextStyle(fontSize: 20,color: darkPrimaryColor,fontWeight: FontWeight.w500),),
          const NavBarItem(
            icon: Icons.list_sharp
          )
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final IconData icon;

  // ignore: use_key_in_widget_constructors
  const NavBarItem({ required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: darkPrimaryColor.withOpacity(0.5),
          offset: const Offset(5,10),
            spreadRadius: 3,
            blurRadius: 10
          ),
          const BoxShadow(color: Colors.white,offset: Offset(-3,-4),spreadRadius: -2,blurRadius: 20
          )
        ],
          color: primaryColor, borderRadius: BorderRadius.circular(10)),
      child: Icon(
        icon,
        color: darkPrimaryColor,
      ),
    );
  }
}
