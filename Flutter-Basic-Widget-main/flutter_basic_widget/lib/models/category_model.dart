import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });
  
  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];
    
    categories.add(
      CategoryModel(
        name: 'Mango',
        iconPath: 'assets/icons/2.png',
        boxColor: Colors.grey
      )
    );

    categories.add(
      CategoryModel(
        name: 'Orange',
        iconPath: 'assets/icons/3.png',
        boxColor: Colors.teal
      )
    );

    categories.add(
      CategoryModel(
        name: 'Apple',
        iconPath: 'assets/icons/4.png',
        boxColor: Colors.grey
      )
    );

    categories.add(
      CategoryModel(
        name: 'Srrwberry',
        iconPath: 'assets/icons/5.png',
        boxColor: Colors.teal
      )
    );
    

    return categories;
  }
}