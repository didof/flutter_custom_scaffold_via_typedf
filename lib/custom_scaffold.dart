import 'package:flutter/material.dart';

typedef CustomBuilder = Widget Function(
  BuildContext context,
  BoxConstraints costraints,
);

typedef AppBarBuilder = Widget Function(
  BuildContext context,
);

// level 3
class CustomScaffold extends StatelessWidget {
  final Widget body;
  final CustomBuilder builder;

  const CustomScaffold({this.body, this.builder});

  static Widget responsive({CustomBuilder builder}) {
    return _buildSafeScaffold(
      child: LayoutBuilder(builder: (context, constraints) {
        return builder(context, constraints);
      }),
    );
  }

  static _buildSafeScaffold({Widget child}) {
    return Scaffold(
        body: SafeArea(
      child: child,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: body,
      ),
    );
  }
}

// // # level 2
// class CustomScaffold extends StatelessWidget {
//   final Widget body;

//   const CustomScaffold({this.body});

//   @override
//   Scaffold build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: body,
//       ),
//     );
//   }
// }
