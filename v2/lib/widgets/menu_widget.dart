import 'package:fk_appwend/models/menu.dart';
import 'package:fk_appwend/utils/constants.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  List<Menu> menus = [];
  List<double> loc = [];

  MenuWidget(this.menus, this.loc);
  // MenuWidget(List<Menu> menus, ) {
  //   this.menus = menus;
  // }
  Container _makeHeader() {
    return Container(
      color: Color(Constants.FLIPKART_BLUE),
      height: deviceSize.height / 10,
      child: Center(
        child: ListTile(
          leading: Icon(
            Icons.home_filled,
            color: Colors.white,
          ),
          title: Row(
            children: [
              Text(
                'Home',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  'Lng:${loc[0]} Lat${loc[1]}',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
          trailing: Image.asset(Constants.FLIPKART_SPLASH_LOGO),
        ),
      ),
    );
  }

  _makeASingleMenu(int index) {
    // return Text('Hello');

    int iconData = int.parse(menus[index].iconValue);
    return Container(
      child: ListTile(
        //leading: Icon(IconData(iconData, fontFamily: 'MaterialIcons')),
        title: Text(menus[index].name),
      ),
    );
  }

  _makeBody() {
    print("Menu is $menus");
    // return Container(
    //   child: Text('bgsdjgjhdjk'),
    // );
    return ListView.builder(
      shrinkWrap: true,
      itemCount: menus.length,
      itemBuilder: (BuildContext context, int index) {
        return _makeASingleMenu(index);
      },
    );
  }

  Size deviceSize;
  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return this.menus != null && this.menus.length > 0
        ? ListView(
            children: [_makeHeader(), Container(child: _makeBody())],
          )
        : Container(child: Text('Waiting to Load a Menu'));
  }
}
