import 'package:flutter/material.dart';
import 'package:online_learnig_ui/data/models/course_level.dart';

class CourseModel {
  
  String? id;
  String? courseName;
  double? rating;
  String? authror;
  CourseLevel? level;
  double? price;
  Color? color;
CourseModel({this.id ,this.courseName ,this.authror ,this.level , this.color,this.price ,this.rating});



}