import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class CategoryModel {
  String id;
  String title;
  String tag;

  CategoryModel({this.id, this.tag, this.title});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    tag = json['tag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['tag'] = this.tag;
    return data;
  }
}
