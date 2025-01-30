import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

customAppBar(){
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    title: SvgPicture.asset("assets/logo.svg",height: 60,),
  );
}