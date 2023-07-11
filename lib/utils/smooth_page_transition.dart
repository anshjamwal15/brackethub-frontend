import 'package:flutter/material.dart';

const begin = Offset(1.0, 0.0);
const end = Offset.zero;
const curve = Curves.ease;

var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

void smoothNavigate(BuildContext context, Widget page) {
  if (ModalRoute.of(context)?.settings.name == page.runtimeType.toString()) {
    return;
  }
  Navigator.push(
    context,
    PageRouteBuilder(
      settings: RouteSettings(name: page.runtimeType.toString()),
      transitionDuration: const Duration(milliseconds: 500),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return page;
      },
    ),
  );
}
