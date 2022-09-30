import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

var data;

Future getPostApi() async {
  final Response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
  // var data = jsonDecode(Response.body.toString());
  if (Response.statusCode == 200) {
    data = jsonDecode(Response.body.toString());
  } else {
    return;
  }
}
