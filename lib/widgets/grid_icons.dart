import 'package:flutter/material.dart';
import 'dart:math';
import 'package:ch9_gridview/services/random_icon_generator.dart';


class GridIcons {
  //final int numberOfIcons = 50;

  List<IconData> iconList = [];
  Random random = new Random();

  List<IconData> getIconList(int numberOfIcons){
    for(int i = 0 ; i < numberOfIcons ; i++){
      int randomNumber = random.nextInt(980) + 1;
      iconList..add(RandomIcon.getIcon(randomNumber));
    }
    return iconList;
  }



}