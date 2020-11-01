import 'package:fk_appwend/db/dboperations.dart';
import 'package:fk_appwend/models/menu.dart';
import 'package:fk_appwend/models/product.dart';
import 'package:fk_appwend/utils/constants.dart';
import 'package:fk_appwend/utils/gps.dart';
import 'package:fk_appwend/widgets/category_widget.dart';
import 'package:fk_appwend/widgets/deals_widget.dart';
import 'package:fk_appwend/widgets/menu_widget.dart';
import 'package:fk_appwend/widgets/slider_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> deals = [];
  List<Menu> menus = [];
  //List<double> loc = [];
  String loc = "";
  List<Product> ads = [];
  List<Product> categories = [];
  @override
  void initState() {
    super.initState();
    _loadThings();
  }

  _loadThings() async {
    menus = await DbOperations.fetchMenus();
    loc = await getLocation();
    ads = await DbOperations.fetchAds();
    categories = await DbOperations.fetchCategories();
    deals = await DbOperations.fetchDeals();
    print("Menus $menus");
    setState(() {});
  }

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
      //leading: Icon(Icons.menu),
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
      drawer: Drawer(
        child: MenuWidget(menus, loc),
      ),
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: ListView(
        children: [
          SliderWidget(ads),
          CategoryWidget(categories),
          DealsWidget(deals)
        ],
      ),
    );
  }
}
