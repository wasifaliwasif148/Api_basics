import 'package:api/api.dart';
import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(first());
}
class first extends StatelessWidget {
  const first({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
    );
  }
}
class second extends StatelessWidget {
  const second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Testing"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: ((context, index) {
        return ListTile(
          title: Text("name"),
          subtitle: Text("sub name"),
          leading: CircleAvatar(backgroundColor: Colors.blue, child: Text("circle")),
          trailing: Text("email"),
        );
      })),
    );
  }
}