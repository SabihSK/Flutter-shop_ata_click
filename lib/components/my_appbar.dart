import 'package:flutter/material.dart';

myAppbar({String title}){
  return AppBar(
    title: Text(title,style: TextStyle(color: Colors.black),),
    centerTitle: true,
    elevation: 0,
  );
}