import 'package:fk_appwend/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AppBar _appBar() {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(deviceSize.height / 10),
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.white,
              alignment: Alignment.center,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search For Products, Brands and More'),
              ),
            ),
          ),
        ),
      ),
      actions: [
        Icon(Icons.notifications),
        Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Icon(Icons.shopping_cart))
      ],
      leading: Icon(Icons.menu),
      title: Image.asset(
        Constants.FLIPKART_LOGO,
        height: deviceSize.height / 3,
        width: deviceSize.width / 4,
      ),
    );
  }

  Size deviceSize;
  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
    );
  }
}
