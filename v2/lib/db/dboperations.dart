import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fk_appwend/models/menu.dart';

class DbOperations {
  _DbOperations() {}
  static Future<List<Menu>> fetchMenus() async {
    List<Menu> menus = [];
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('menus').get();
    querySnapshot.docs.forEach((doc) {
      Menu menu = Menu();
      menu.name = doc['name'];
      menu.url = doc['url'];
      menu.iconValue = doc['iconValue'];
      menu.status = doc['status'];
      menus.add(menu);
    });
    return menus;
  }
}
