import 'package:fk_appwend/models/product.dart';
import 'package:flutter/material.dart';

class DealsWidget extends StatelessWidget {
  List<Product> deals = [];
  DealsWidget(this.deals);

  Container buildSingleDeal(int index) {
    return Container(
      height: deviceSize.height / 8,
      child: Column(
        children: [
          Image.network(
            deals[index].imagePath,
            height: deviceSize.height / 5,
            width: deviceSize.width / 5,
          ),
          Text(deals[index].name),
          Text(deals[index].price ?? 900.toString())
        ],
      ),
    );
  }

  Size deviceSize;
  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return Container(
      height: deviceSize.height / 1.5,
      child: Stack(
        children: [
          Container(
            color: Colors.tealAccent,
            height: deviceSize.height / 1.5,
          ),
          Container(
            //padding: EdgeInsets.only(right: 10, top: 4, left: 90),
            width: deviceSize.width,
            height: deviceSize.height / 10,
            //alignment: Alignment.topCenter,
            child: Image.network(
                'https://freeiconshop.com/wp-content/uploads/edd/alarm-flat.png'),
          ),
          Positioned(
            top: deviceSize.height / 70,
            left: 0,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Deals of the Day',
                            style: TextStyle(fontSize: 20),
                          ),
                          Row(children: [
                            Icon(Icons.access_time),
                            Text('19h 18m Remaining')
                          ])
                        ],

                        //crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ],
                    //mainAxisAlignment: MainAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.,
                  ),
                ),
                Container(
                  width: deviceSize.width - 10,
                  height: deviceSize.height / 1.5,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (BuildContext ctx, int index) {
                      //return Text('Hi');
                      return buildSingleDeal(index);
                    },
                    itemCount: deals.length,
                  ),
                )
              ],
              // Grid
              mainAxisAlignment: MainAxisAlignment.start,
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(right: 20),
            child: MaterialButton(
              color: Colors.white,
              onPressed: () {},
              child: Text('View All'),
            ),
          )
        ],
      ),
    );
  }
}
