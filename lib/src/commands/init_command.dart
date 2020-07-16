import 'dart:io';

import 'package:xdo/src/util/create_module_template.dart';
import 'package:xdo/src/util/create_packages_template.dart';
part 'commands.dart';

class InitCommand{

  InitCommand();
  
  static var myDir = Directory('lib/');

  static void init({List<String>args}){
    
    var flag = args[1];
    if (args[0].isNotEmpty && args[0] == 'init') {
      print('criar estrutura de diretorios');
      if (flag.isNotEmpty) {
        switch (flag) {
          case '-p':
            PackagesTemplate().create(myDir);
            print('criar em forma de packages');
            break;
          case '-m':
            ModuleTemplate().create(myDir);
            print('criar em forma de módulos');
            break;
        }
      }
    }

  





    var systemTempDir = Directory.current;
    // List directory contents, recursing into sub-directories,
    // but not following symbolic links.
    systemTempDir
        .list(recursive: true, followLinks: false)
        .listen((FileSystemEntity entity) {
      //print(entity.path);
    });
  


    
  }
}