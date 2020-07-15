import 'dart:io';
part 'commands.dart';

class InitCommand{

  InitCommand();

  static void init({List<String>args}){
    if (args[0] == 'init') {
      print('criar estrutura de diretorios');

      if (args[1].isNotEmpty) {
        switch (args[1]) {
          case '-p':
            print('criar em forma de packages');
            break;
          case '-m':
            print('criar em forma de módulos');
            break;
        }
      }
    }
    var myDir = Directory('src');
    myDir
        .exists()
        .then((value) => value ? print('exists') : print('non exist'));
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