import 'package:flutter/material.dart';
import 'package:flutter_app/pages/index.dart';

void main()=>runApp(MaterialApp(
  initialRoute:'/',  //初始化路由
  routes:{
    "/":(context)=>Index(),
  },
));