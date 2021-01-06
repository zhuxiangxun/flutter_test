import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';  //轮播插件

class Home extends StatefulWidget{
  @override
  _HomeState createState()=>_HomeState();
}
class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    List<int> list = [1,2,3,4,5];
    return Column(
        children:<Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(),
                items: list.map((item) => Container(
                  child: Center(
                      child: Text(item.toString())
                  ),
                  color: Colors.green,
                )).toList(),
              )
            ],
          ),
        ]
    );
  }
}
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     List<int> list = [1,2,3,4,5];
//     return Scaffold(
//       body: Container(
//           child: CarouselSlider(
//             options: CarouselOptions(),
//             items: list.map((item) => Container(
//               child: Center(
//                   child: Text(item.toString())
//               ),
//               color: Colors.green,
//             )).toList(),
//           )
//       ),
//     );
//   }
// }