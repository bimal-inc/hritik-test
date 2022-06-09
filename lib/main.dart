import 'dart:convert';

import 'package:flutter/material.dart';

//import http
import 'package:http/http.dart' as http;

import 'college.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const String urll = 'https://jsonkeeper.com/b/16VC';

  String token = '3e90d24a-3f1a-408e-ab9e-f5148ff557e7';
  Future<Welcome> getUserApi() async {
    final response = await http.get(Uri.parse(urll));
    var data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      print(response.statusCode);
      return Welcome.fromJson(data);
    } else {
      //print(response.statusCode);
      return Welcome.fromJson(data);
      print(response.statusCode);
    }
    print('Token : $token');
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder<Welcome>(
                future: getUserApi(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.listss!.length,
                      itemBuilder: (context, index) {
                        return Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              title:
                                  Text(snapshot.data!.listss[index].classType),
                              // subtitle:
                              //     Text(snapshot.data!.listss![index].name),
                              trailing:
                                  Text(snapshot.data!.listss[index].classType),
                            )
                          ],
                        );
                      },
                    );
                  } else {
                    return Column(
                      children: [
                        Center(child: Text('loading sirr')),
                      ],
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
