import 'package:flutter/material.dart';


class MainLayout extends StatelessWidget {
  final Widget page;
  const MainLayout({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const ShapeDecoration(
          color: Color.fromRGBO(46, 13, 161, 0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/main_background.png'),
              )
          ),
          child: page,
        ),
      ),
    );
  }
}
