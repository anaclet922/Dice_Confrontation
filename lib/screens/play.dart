import 'package:flutter/material.dart';


class Play extends StatelessWidget {
  const Play({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Column(
          children: [
            Expanded(
                child: Container(
                  height: 31.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/red_back_top.png"),
                          fit: BoxFit.fill
                      )
                  ),
                )
            ),
            Expanded(
                child: Container(
                  height: 31.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/red_back_bottom.png"),
                          fit: BoxFit.fill
                      )
                  ),
                )
            ),
          ],
        ),

        Center(
            child: Container(
              height: 31.0,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/wood_bar.png"),
                      fit: BoxFit.fill
                  )
              ),
            )
        ),

        Positioned(
            top: 0.0,
            child: Container(
              height: 31.0,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/wood_bar.png"),
                      fit: BoxFit.fill
                  )
              ),
            )
        ),
        Positioned(
            bottom: 0.0,
            child: Container(
              height: 31.0,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/wood_bar.png"),
                  fit: BoxFit.fill
                )
              ),
            )
        )
      ]
    );
  }
}