import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {

  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void getAPIdata() async{

    var url = Uri.parse("https://reqres.in/api/users");
    http.Response response = await http.get(url);
    Map jsonData = jsonDecode(response.body);
    print(jsonData["page"]);
  }

  @override
  void initState() {
    super.initState();

    getAPIdata();
    print("init called");

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
