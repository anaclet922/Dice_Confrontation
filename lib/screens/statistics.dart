import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 320,
            height: 298,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Text(
                    'Victories',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 304,
                  top: 0,
                  child: Text(
                    '15',
                    style: TextStyle(
                      color: Color(0xFFFD0746),
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 28,
                  child: Text(
                    'Victory by capitulation',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 304,
                  top: 28,
                  child: Text(
                    '12',
                    style: TextStyle(
                      color: Color(0xFFFD0746),
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 56,
                  child: Text(
                    'Defeat',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 308,
                  top: 56,
                  child: Text(
                    '3',
                    style: TextStyle(
                      color: Color(0xFFFD0746),
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 84,
                  child: Text(
                    'Capitulate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 304,
                  top: 84,
                  child: Text(
                    '13',
                    style: TextStyle(
                      color: Color(0xFFFD0746),
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 112,
                  child: Text(
                    'Maximum health',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 304,
                  top: 112,
                  child: Text(
                    '12',
                    style: TextStyle(
                      color: Color(0xFFFD0746),
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 140,
                  child: Text(
                    'Lightning victory',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 304,
                  top: 140,
                  child: Text(
                    '15',
                    style: TextStyle(
                      color: Color(0xFFFD0746),
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 168,
                  child: Text(
                    'Swift victory',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 304,
                  top: 168,
                  child: Text(
                    '15',
                    style: TextStyle(
                      color: Color(0xFFFD0746),
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 196,
                  child: Text(
                    'Swift defeat',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 304,
                  top: 196,
                  child: Text(
                    '15',
                    style: TextStyle(
                      color: Color(0xFFFD0746),
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 224,
                  child: Text(
                    'Prolonged  defeat',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 304,
                  top: 224,
                  child: Text(
                    '15',
                    style: TextStyle(
                      color: Color(0xFFFD0746),
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 252,
                  child: Text(
                    'Max damage in turn',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 304,
                  top: 252,
                  child: Text(
                    '15',
                    style: TextStyle(
                      color: Color(0xFFFD0746),
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 280,
                  child: Text(
                    'Max damage in match',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 304,
                  top: 280,
                  child: Text(
                    '15',
                    style: TextStyle(
                      color: Color(0xFFFD0746),
                      fontSize: 15,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
