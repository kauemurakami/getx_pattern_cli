import 'dart:io';

class PackagesTemplate{

  void create(myDir){
    myDir.exists()
        .then((value) => value ? Directory('${myDir.path}/app/data').create(recursive: true) : print('lib/ não encontrada'))
        .then((value) => Directory('${myDir.path}/app/data/model').create(recursive: true))
        .then((value) => Directory('${myDir.path}/app/data/repositories').create(recursive: true))
        .then((value) => Directory('${myDir.path}/app/data/provider').create(recursive: true))
        .then((value) => Directory('${myDir.path}/app/controller').create(recursive: true))
        .then((value) => Directory('${myDir.path}/app/routes').create(recursive: true))
        .then((value) => Directory('${myDir.path}/app/ui').create(recursive: true))
        .then((value) => Directory('${myDir.path}/app/ui/widgets').create(recursive: true))
        .then((value) => Directory('${myDir.path}/app/ui/theme').create(recursive: true));

  }
}