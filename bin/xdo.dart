

import 'dart:io';

import 'package:args/args.dart';

void main(List<String> args) {
  print(args);

  final parser = ArgParser()
  ..addOption('init', abbr: 'n');

  var params = parser.parse(args);

  if(params['init'] == null){
    stderr.writeln('Comando inválido');
    exit(2);
  }

}
