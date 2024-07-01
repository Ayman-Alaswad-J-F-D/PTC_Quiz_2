import 'package:flutter/material.dart' show MediaQuery, Size;

Size size(context) => MediaQuery.of(context).size;

double sizeWidth(context) => size(context).width;

double sizeHeight(context) => size(context).height;
