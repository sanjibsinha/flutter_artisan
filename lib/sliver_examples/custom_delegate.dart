import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomChildDelegate extends SliverChildListDelegate {
  CustomChildDelegate(List<Widget> children) : super(children);
  @override
  List<Widget> get children => [];
}
