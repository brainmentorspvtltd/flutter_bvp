import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fk_appwend/db/dboperations.dart';
import 'package:fk_appwend/models/product.dart';
import 'package:flutter/material.dart';

class ListOfProducts extends StatefulWidget {
  @override
  _ListOfProductsState createState() => _ListOfProductsState();
}

class _ListOfProductsState extends State<ListOfProducts> {
  String groupValue = "mygroup";
  final NumberFormat numberFormat = NumberFormat("#,##,###0.0#", "en_US");
  _displayBottomSheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext ctx) {
          return Container(
            height: deviceSize.height / 2,
            child: Column(
              children: [
                Container(
                  child: Text(
                    'SORT BY',
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                RadioListTile(

                    value: "Descending",

                    groupValue: groupValue,
                    onChanged: (value) {},
                    title: Text('Descending')
                    ),


                RadioListTile(
                    title: Text('Price Low to High'),
                    value: "Price Low to High",
                    groupValue: groupValue,
                    onChanged: (value) {}),
                RadioListTile(
                    title: Text('Price High to Low'),
                    value: "Price High to Low",
                    groupValue: groupValue,
                    onChanged: (value) {}),
              ],
            ),
          );
        });
  }

  Size deviceSize;
  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    Query query = DbOperations.fetchProducts();
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlatButton.icon(
                    onPressed: () {
                      _displayBottomSheet();
                    },
                    icon: Icon(Icons.sort),
                    label: Text("Sort")),
                Container(width: 2, height: 20, color: Colors.blueGrey),
                FlatButton.icon(
                    onPressed: () {
                      _displayBottomSheet();
                    },
                    icon: Icon(Icons.filter),
                    label: Text("Filter"))
              ],
            ),
            Divider(
              color: Colors.blueGrey,
              height: 20,
              thickness: 3,
            ),
            Expanded(
                child: StreamBuilder(
              stream: query.snapshots(),
              builder: (BuildContext ctx, AsyncSnapshot stream) {
                if (stream.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (stream.hasError) {
                  return Center(
                    child: Text(
                      'Some Error Occur',
                      style: TextStyle(fontSize: 24, color: Colors.red),
                    ),
                  );
                }
                // U Get the data
                QuerySnapshot querySnapShot = stream.data;
                return GridView.builder(
                    itemCount: querySnapShot.size,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: deviceSize.width / deviceSize.height),
                    itemBuilder: (BuildContext c, int index) {
                      // filled up
                      DocumentSnapshot documentSnapShot =
                          querySnapShot.docs[index];
                      Map<String, dynamic> datamap = documentSnapShot.data();
                      Product product = Product();
                      product.name = datamap["name"];
                      product.price = double.parse(datamap["price"].toString());

                      product.imagePath = datamap['image'];
                      product.desc = datamap['desc'];
                      return Card(
                        child: Column(
                          children: [
                            Image.network(product.imagePath),
                            Text(product.name),
                            Text(product.desc),
                            Text(
                                "\u{20B9}${numberFormat.format(product.price)}")
                          ],
                        ),
                      );
                    });
              },
            ))
          ],
        ),
      ),
    );
  }
}
