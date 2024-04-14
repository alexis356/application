import 'package:learning/screens/PrimaPagina.dart';

import 'screens/SecondaPagina.dart';
import 'package:flutter/material.dart';

import 'screens/PaginaErrore.dart';

class RouteGenerator {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch(settings.name){
      case '/prima':
        return MaterialPageRoute(builder: (context) => PrimaPagina());
      case '/seconda':
        if(args is String){
          return MaterialPageRoute(builder: (context) => SecondaPagina(data: args));
        }
        return MaterialPageRoute(builder: (context) => PaginaErrore());
      default:
        return MaterialPageRoute(builder: (context) => PaginaErrore());

    }
  }
}