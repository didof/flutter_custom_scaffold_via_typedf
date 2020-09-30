import 'package:flutter/material.dart';
import 'package:typdef_1/custom_scaffold.dart';

void main() => runApp(App());

// # level 4
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Scaffold .alternative',
      home: CustomScaffold.responsive(
        builder: (context, costraints) {
          return Container(
            color: Colors.yellow,
            width: costraints.maxWidth / 2,
            height: costraints.maxHeight / 4,
          );
        },
      ),
    );
  }
}

// // # level 2
// class App extends StatelessWidget {
//   final container = Container(color: Colors.red, width: 100, height: 100);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Custom Scaffold .alternative',
//         home: CustomScaffold(body: container));
//   }
// }
